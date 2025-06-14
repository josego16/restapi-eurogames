package domain.interfaces

import domain.models.Game

/**
 * Repositorio para gestionar juegos.
 */
interface GameRepository {

    /**
     * Obtiene todos los juegos.
     */
    suspend fun getAll(): List<Game>

    /**
     * Obtiene un juego por su ID.
     *
     * @param id Identificador del juego.
     * @return El juego o null si no existe.
     */
    suspend fun getById(id: Int): Game?
}