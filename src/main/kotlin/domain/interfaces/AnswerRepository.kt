package domain.interfaces

import domain.models.Answer

/**
 * Repositorio para gestionar respuestas.
 */
interface AnswerRepository {

    /**
     * Obtiene todas las respuestas registradas.
     */
    suspend fun getAll(): List<Answer>

    /**
     * Obtiene una respuesta por su identificador.
     *
     * @param id Identificador de la respuesta.
     * @return La respuesta correspondiente o null si no existe.
     */
    suspend fun getById(id: Int): Answer?

    /**
     * Verifica si una respuesta es correcta para una pregunta dada.
     *
     * @param questionId ID de la pregunta.
     * @param answerId ID de la respuesta.
     * @return true si la respuesta es correcta, false en caso contrario.
     */
    suspend fun isAnswerCorrect(questionId: Int, answerId: Int): Boolean
}