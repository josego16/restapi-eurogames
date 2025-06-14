package domain.usecase.score

import domain.interfaces.ScoreRepository

/**
 * Caso de uso para obtener la puntuación total de un usuario en todos los juegos.
 *
 * @property repository Repositorio de puntuaciones.
 */
class GetTotalScoreByUserUseCase(private val repository: ScoreRepository) {

    /**
     * Invoca la operación para recuperar la puntuación acumulada del usuario.
     *
     * @param userId ID del usuario.
     * @return Puntuación total del usuario.
     */
    suspend operator fun invoke(userId: Int): Double {
        return repository.getTotalScoreByUser(userId)
    }
}