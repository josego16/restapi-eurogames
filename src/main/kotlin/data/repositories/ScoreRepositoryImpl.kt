package data.repositories

import data.db.daos.ScoreDao
import data.db.suspendedTransaction
import domain.interfaces.ScoreRepository
import domain.models.Score
import org.jetbrains.exposed.sql.and
import org.slf4j.Logger
import org.slf4j.LoggerFactory

class ScoreRepositoryImpl : ScoreRepository {
    private val logger: Logger = LoggerFactory.getLogger(ScoreRepositoryImpl::class.java)

    /**
     * Obtiene todas las puntuaciones.
     * @return Lista de puntuaciones o vacía si ocurre un error.
     */
    override suspend fun getAll(): List<Score> = runCatching {
        suspendedTransaction {
            ScoreDao.all().map { it.toDomain() }
        }
    }.onFailure {
        logger.error("Error al obtener todas las sesiones", it)
    }.getOrDefault(emptyList())

    /**
     * Obtiene una puntuación por su ID.
     * @param id Identificador de la puntuación.
     * @return Puntuación encontrada o null si no existe o hay error.
     */
    override suspend fun getById(id: Int): Score? = runCatching {
        suspendedTransaction {
            ScoreDao.findById(id)?.toDomain()
        }
    }.onFailure {
        logger.error("Error al obtener sesión con ID $id", it)
    }.getOrNull()

    /**
     * Obtiene la puntuación total de un usuario.
     * @param userId Identificador del usuario.
     * @return Suma total de puntuaciones del usuario o 0.0 si hay error.
     */
    override suspend fun getTotalScoreByUser(userId: Int): Double = runCatching {
        suspendedTransaction {
            ScoreDao.find { data.db.tables.ScoreTable.userId eq userId }
                .sumOf { it.scoreValue }
        }
    }.onFailure {
        logger.error("Error al obtener la puntuación global del usuario con ID $userId", it)
    }.getOrDefault(0.0)

    /**
     * Obtiene la puntuación total de un usuario en un juego específico.
     * @param userId Identificador del usuario.
     * @param gameId Identificador del juego.
     * @return Suma total de puntuaciones del usuario en el juego o 0.0 si hay error.
     */
    override suspend fun getTotalScoreByUserAndGame(userId: Int, gameId: Int): Double = runCatching {
        suspendedTransaction {
            ScoreDao.find { (data.db.tables.ScoreTable.userId eq userId) and (data.db.tables.ScoreTable.gameId eq gameId) }
                .sumOf { it.scoreValue }
        }
    }.onFailure {
        logger.error("Error al obtener la puntuación del usuario $userId en el juego $gameId", it)
    }.getOrDefault(0.0)

    /**
     * Crea un nuevo registro de puntuación.
     * @param score Objeto Score a registrar.
     * @return Puntuación creada o excepción si falla.
     */
    override suspend fun createScores(score: Score): Score = runCatching {
        suspendedTransaction {
            val dao = ScoreDao.Companion.fromDomain(score)
            dao.toDomain()
        }
    }.onFailure {
        logger.error("Error al crear la puntuación", it)
    }.getOrNull() ?: throw Exception("No se pudo crear la puntuación")
}