package data.repositories

import data.db.daos.GameSessionDao
import data.db.suspendedTransaction
import domain.interfaces.GameSessionInterface
import domain.models.GameSession
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import java.util.*

class GameSessionRepositoryImpl : GameSessionInterface {
    private val logger: Logger = LoggerFactory.getLogger(GameSessionRepositoryImpl::class.java)

    override suspend fun getAll(): List<GameSession> = runCatching {
        suspendedTransaction {
            GameSessionDao.all().map { it.toDomain() }
        }
    }.onFailure {
        logger.error("Error al obtener todas las sesiones", it)
    }.getOrDefault(emptyList())

    override suspend fun getById(id: UUID): GameSession? = runCatching {
        suspendedTransaction {
            GameSessionDao.findById(id)?.toDomain()
        }
    }.onFailure {
        logger.error("Error al obtener sesión con ID $id", it)
    }.getOrNull()
}