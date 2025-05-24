package data.repositories

import data.db.daos.ScoreDao
import data.db.suspendedTransaction
import domain.interfaces.ScoreInterface
import domain.models.Score
import org.slf4j.Logger
import org.slf4j.LoggerFactory

class ScoreRepositoryImpl : ScoreInterface {
    private val logger: Logger = LoggerFactory.getLogger(ScoreRepositoryImpl::class.java)

    override suspend fun getAll(): List<Score> = runCatching {
        suspendedTransaction {
            ScoreDao.all().map { it.toDomain() }
        }
    }.onFailure {
        logger.error("Error al obtener todas las sesiones", it)
    }.getOrDefault(emptyList())

    override suspend fun getById(id: Int): Score? = runCatching {
        suspendedTransaction {
            ScoreDao.findById(id)?.toDomain()
        }
    }.onFailure {
        logger.error("Error al obtener sesión con ID $id", it)
    }.getOrNull()
}