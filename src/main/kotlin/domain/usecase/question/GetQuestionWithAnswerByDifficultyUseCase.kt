package domain.usecase.question

import domain.dto.QuestionWithAnswersDto
import domain.enums.Difficulty
import domain.enums.QuestionType
import domain.interfaces.QuestionRepository
import domain.mappers.toDto

class GetQuestionWithAnswerByDifficultyUseCase(private val repository: QuestionRepository) {
    suspend operator fun invoke(
        difficulty: Difficulty? = null,
        category: QuestionType? = null
    ): List<QuestionWithAnswersDto> {
        return repository.getQuestionsWithAnswersByDifficulty(difficulty, category).map { it.toDto() }
    }
}