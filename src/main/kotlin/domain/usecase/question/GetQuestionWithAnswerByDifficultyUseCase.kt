package domain.usecase.question

import domain.dto.QuestionWithAnswersDto
import domain.enums.Difficulty
import domain.enums.QuestionType
import domain.interfaces.QuestionRepository
import domain.mappers.toDto

/**
 * Caso de uso para obtener preguntas con respuestas filtradas por dificultad y/o categoría.
 *
 * @property repository Repositorio de preguntas.
 */
class GetQuestionWithAnswerByDifficultyUseCase(private val repository: QuestionRepository) {

    /**
     * Ejecuta la recuperación de preguntas con respuestas según filtros.
     *
     * @param difficulty Nivel de dificultad (puede ser `null`).
     * @param category Tipo de pregunta (puede ser `null`).
     * @return Lista de [QuestionWithAnswersDto].
     */
    suspend operator fun invoke(
        difficulty: Difficulty? = null,
        category: QuestionType? = null
    ): List<QuestionWithAnswersDto> {
        return repository.getQuestionsWithAnswersByDifficulty(difficulty, category).map { it.toDto() }
    }
}