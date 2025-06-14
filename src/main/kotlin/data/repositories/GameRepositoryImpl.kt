package data.repositories

import data.db.daos.GameDao
import data.db.suspendedTransaction
import domain.interfaces.GameRepository
import domain.models.Game
import org.slf4j.Logger
import org.slf4j.LoggerFactory

class GameRepositoryImpl : GameRepository {
    private val logger: Logger = LoggerFactory.getLogger(GameRepositoryImpl::class.java)

    /**
     * Obtiene todos los juegos.
     * @return Lista de juegos o lista vacía si ocurre un error.
     */
    override suspend fun getAll(): List<Game> = runCatching {
        suspendedTransaction {
            GameDao.all().map { it.toDomain() }
        }
    }.onFailure {
        logger.error("Error al obtener todas las respuestas")
    }.getOrDefault(emptyList())

    /**
     * Obtiene un juego por su ID.
     * @param id Identificador del juego.
     * @return Juego encontrado o null si no existe o hay error.
     */
    override suspend fun getById(id: Int): Game? = runCatching {
        suspendedTransaction {
            GameDao.findById(id)?.toDomain()
        }
    }.onFailure {
        logger.error("Error al obtener respuesta con ID $id", it)
    }.getOrNull()
}