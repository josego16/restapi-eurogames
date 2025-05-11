package data.repositories

import data.db.daos.MediaDao
import data.db.suspendedTransaction
import domain.interfaces.MediaInterface
import domain.models.Media
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import java.util.*

class MediaRepositoryImpl : MediaInterface {
    private val logger: Logger = LoggerFactory.getLogger(MediaRepositoryImpl::class.java)

    override suspend fun getAll(): List<Media> = runCatching {
        suspendedTransaction {
            MediaDao.all().map { it.toDomain() }
        }
    }.onFailure {
        logger.error("Error al obtener todas las sesiones", it)
    }.getOrDefault(emptyList())

    override suspend fun getById(id: UUID): Media? = runCatching {
        suspendedTransaction {
            MediaDao.findById(id)?.toDomain()
        }
    }.onFailure {
        logger.error("Error al obtener sesión con ID $id", it)
    }.getOrNull()

    override suspend fun create(entity: Media): Media? = runCatching {
        suspendedTransaction {
            MediaDao.fromDomain(entity, null).toDomain()
        }
    }.onFailure {
        logger.error("Error al crear sesión", it)
    }.getOrNull()

    override suspend fun update(id: UUID, entity: Media): Media? = runCatching {
        suspendedTransaction {
            val existing = MediaDao.findById(id)
            if (existing != null) {
                MediaDao.fromDomain(entity, existing).toDomain()
            } else {
                logger.warn("Sesión con ID $id no encontrada para actualizar")
                null
            }
        }
    }.onFailure {
        logger.error("Error al actualizar sesión con ID $id", it)
    }.getOrNull()

    override suspend fun delete(id: UUID): Boolean = runCatching {
        suspendedTransaction {
            MediaDao.findById(id)?.let {
                it.delete()
                true
            } ?: false
        }
    }.onFailure {
        logger.error("Error al eliminar sesión con ID $id", it)
    }.getOrDefault(false)
}
