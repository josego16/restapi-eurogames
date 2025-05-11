package data.repositories

import data.db.daos.ScoreDao
import data.db.suspendedTransaction
import domain.interfaces.ScoreInterface
import domain.models.Score
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import java.util.*

class ScoreRepositoryImpl : ScoreInterface {
    private val logger: Logger = LoggerFactory.getLogger(ScoreRepositoryImpl::class.java)

    override suspend fun getAll(): List<Score> = runCatching {
        suspendedTransaction {
            ScoreDao.all().map { it.toDomain() }
        }
    }.onFailure {
        logger.error("Error al obtener todas las sesiones", it)
    }.getOrDefault(emptyList())

    override suspend fun getById(id: UUID): Score? = runCatching {
        suspendedTransaction {
            ScoreDao.findById(id)?.toDomain()
        }
    }.onFailure {
        logger.error("Error al obtener sesión con ID $id", it)
    }.getOrNull()

    override suspend fun create(entity: Score): Score? = runCatching {
        suspendedTransaction {
            ScoreDao.fromDomain(entity, null).toDomain()
        }
    }.onFailure {
        logger.error("Error al crear sesión", it)
    }.getOrNull()

    override suspend fun update(id: UUID, entity: Score): Score? = runCatching {
        suspendedTransaction {
            val existing = ScoreDao.findById(id)
            if (existing != null) {
                ScoreDao.fromDomain(entity, existing).toDomain()
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
            ScoreDao.findById(id)?.let {
                it.delete()
                true
            } ?: false
        }
    }.onFailure {
        logger.error("Error al eliminar sesión con ID $id", it)
    }.getOrDefault(false)
}