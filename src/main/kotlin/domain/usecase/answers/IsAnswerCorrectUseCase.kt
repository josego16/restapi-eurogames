package domain.usecase.answers

import domain.interfaces.AnswerRepository

class IsAnswerCorrectUseCase(private val repository: AnswerRepository) {
    suspend operator fun invoke(questionId: Int, answerId: Int): Boolean {
        return repository.isAnswerCorrect(questionId, answerId)
    }
}