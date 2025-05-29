package domain.usecase.question

import domain.dto.QuestionWithAnswersDto
import domain.enums.Difficulty
import domain.interfaces.QuestionRepository
import domain.mappers.toDto

class GetQuestionWithAnswerByDifficultyUseCase(private val repository: QuestionRepository) {
    suspend operator fun invoke(difficulty: Difficulty): List<QuestionWithAnswersDto> {
        return repository.getQuestionsWithAnswersByDifficulty(difficulty).map { it.toDto() }
    }
}