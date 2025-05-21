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
}