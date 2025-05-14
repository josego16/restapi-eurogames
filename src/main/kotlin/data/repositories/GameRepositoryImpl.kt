package data.repositories

import data.db.daos.GameDao
import data.db.suspendedTransaction
import domain.interfaces.GameInterface
import domain.models.Game
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import java.util.*

class GameRepositoryImpl : GameInterface {
    private val logger: Logger = LoggerFactory.getLogger(GameRepositoryImpl::class.java)

    override suspend fun getAll(): List<Game> = runCatching {
        suspendedTransaction {
            GameDao.all().map { it.toDomain() }
        }
    }.onFailure {
        logger.error("Error al obtener todas las respuestas")
    }.getOrDefault(emptyList())

    override suspend fun getById(id: UUID): Game? = runCatching {
        suspendedTransaction {
            GameDao.findById(id)?.toDomain()
        }
    }.onFailure {
        logger.error("Error al obtener respuesta con ID $id", it)
    }.getOrNull()
}