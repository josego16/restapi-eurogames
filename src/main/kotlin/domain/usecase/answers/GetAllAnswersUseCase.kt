package domain.usecase.answers

import domain.dto.AnswerResponseDto
import domain.interfaces.AnswerRepository
import domain.mappers.toResponseDto

/**
 * Caso de uso para obtener todas las respuestas disponibles en el sistema.
 *
 * @property repository Repositorio que proporciona acceso a los datos de las respuestas.
 */
class GetAllAnswersUseCase(private val repository: AnswerRepository) {

    /**
     * Invoca el caso de uso para recuperar todas las respuestas.
     *
     * @return Una lista de [AnswerResponseDto] representando todas las respuestas.
     */
    suspend operator fun invoke(): List<AnswerResponseDto> {
        return repository.getAll().map { it.toResponseDto() }
    }
}