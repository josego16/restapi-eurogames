package domain.interfaces

import domain.models.Score

/**
 * Repositorio para gestionar puntuaciones de los usuarios.
 */
interface ScoreRepository {

    /**
     * Obtiene todas las puntuaciones.
     */
    suspend fun getAll(): List<Score>

    /**
     * Obtiene una puntuación por su ID.
     *
     * @param id ID de la puntuación.
     * @return La puntuación correspondiente o null.
     */
    suspend fun getById(id: Int): Score?

    /**
     * Calcula la puntuación total de un usuario.
     *
     * @param userId ID del usuario.
     * @return Puntuación total.
     */
    suspend fun getTotalScoreByUser(userId: Int): Double

    /**
     * Calcula la puntuación total de un usuario en un juego.
     *
     * @param userId ID del usuario.
     * @param gameId ID del juego.
     * @return Puntuación total en ese juego.
     */
    suspend fun getTotalScoreByUserAndGame(userId: Int, gameId: Int): Double

    /**
     * Crea una nueva puntuación.
     *
     * @param score Objeto con datos de puntuación.
     * @return Puntuación creada.
     */
    suspend fun createScores(score: Score): Score
}