package domain.interfaces

import domain.models.Answer

interface AnswerInterface{
    suspend fun getAll(): List<Answer>
    suspend fun getById(id: Int): Answer?
    suspend fun isAnswerCorrect(questionId: Int, answerId: Int): Boolean
}