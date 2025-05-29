package data.repositories

import data.db.daos.GameSessionDao
import data.db.suspendedTransaction
import domain.dto.GameSessionCreateDto
import domain.enums.SessionStatus
import domain.interfaces.GameSessionInterface
import domain.mappers.toDomain
import domain.models.GameSession
import org.slf4j.Logger
import org.slf4j.LoggerFactory

class GameSessionRepositoryImpl : GameSessionInterface {
    private val logger: Logger = LoggerFactory.getLogger(GameSessionRepositoryImpl::class.java)

    override suspend fun getAll(): List<GameSession> = runCatching {
        suspendedTransaction {
            GameSessionDao.all().map { it.toDomain() }
        }
    }.onFailure {
        logger.error("Error al obtener todas las sesiones", it)
    }.getOrDefault(emptyList())

    override suspend fun getById(id: Int): GameSession? = runCatching {
        suspendedTransaction {
            GameSessionDao.findById(id)?.toDomain()
        }
    }.onFailure {
        logger.error("Error al obtener sesión con ID $id", it)
    }.getOrNull()

    override suspend fun createGameSession(createDto: GameSessionCreateDto): GameSession = runCatching {
        suspendedTransaction {
            val domain = createDto.toDomain()
            GameSessionDao.fromDomain(domain).toDomain()
        }
    }.onFailure {
        logger.error("Error al crear una nueva sesión de juego", it)
    }.getOrThrow()

    override suspend fun updateSessionStatus(sessionId: Int, status: SessionStatus): Boolean = runCatching {
        suspendedTransaction {
            val dao = GameSessionDao.findById(sessionId) ?: return@suspendedTransaction false
            dao.status = status
            true
        }
    }.onFailure {
        logger.error("Error al actualizar el estado de la sesión con ID $sessionId", it)
    }.getOrDefault(false)
}