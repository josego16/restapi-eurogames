package domain.usecase.score

import domain.interfaces.ScoreRepository

/**
 * Caso de uso para obtener la puntuación total de un usuario en un juego específico.
 *
 * @property repository Repositorio de puntuaciones.
 */
class GetTotalScoreByUserAndGameUseCase(private val repository: ScoreRepository) {

    /**
     * Invoca la operación para recuperar la puntuación total.
     *
     * @param userId ID del usuario.
     * @param gameId ID del juego.
     * @return Puntuación total del usuario en el juego.
     */
    suspend operator fun invoke(userId: Int, gameId: Int): Double {
        return repository.getTotalScoreByUserAndGame(userId, gameId)
    }
}

