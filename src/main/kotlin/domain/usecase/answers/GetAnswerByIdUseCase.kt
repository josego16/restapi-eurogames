package domain.usecase.answers

import domain.dto.AnswerResponseDto
import domain.interfaces.AnswerRepository
import domain.mappers.toResponseDto

/**
 * Caso de uso para obtener una respuesta específica por su ID.
 *
 * @property repository Repositorio que proporciona acceso a los datos de las respuestas.
 */
class GetAnswerByIdUseCase(private val repository: AnswerRepository) {

    /**
     * Invoca el caso de uso para recuperar una respuesta por su identificador único.
     *
     * @param id ID de la respuesta a buscar.
     * @return Un [AnswerResponseDto] si se encuentra la respuesta, o `null` si no existe.
     */
    suspend operator fun invoke(id: Int): AnswerResponseDto? {
        return repository.getById(id)?.toResponseDto()
    }
}