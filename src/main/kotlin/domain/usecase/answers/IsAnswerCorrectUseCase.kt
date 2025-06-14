package domain.usecase.answers

import domain.interfaces.AnswerRepository


/**
 * Caso de uso para verificar si una respuesta es correcta para una pregunta específica.
 *
 * @property repository Repositorio que proporciona acceso a los datos de las respuestas.
 */
class IsAnswerCorrectUseCase(private val repository: AnswerRepository) {

    /**
     * Invoca el caso de uso para validar si una respuesta corresponde correctamente a una pregunta.
     *
     * @param questionId ID de la pregunta.
     * @param answerId ID de la respuesta.
     * @return `true` si la respuesta es correcta, `false` en caso contrario.
     */
    suspend operator fun invoke(questionId: Int, answerId: Int): Boolean {
        return repository.isAnswerCorrect(questionId, answerId)
    }
}