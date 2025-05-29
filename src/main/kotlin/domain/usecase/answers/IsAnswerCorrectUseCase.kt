package domain.usecase.answers

import domain.interfaces.AnswerInterface

class IsAnswerCorrectUseCase(private val repository: AnswerInterface) {
    suspend operator fun invoke(questionId: Int, answerId: Int): Boolean {
        return repository.isAnswerCorrect(questionId, answerId)
    }
}