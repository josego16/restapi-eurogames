package domain.interfaces

import domain.models.Question
import domain.models.QuestionWithAnswer
import java.util.*

interface QuestionInterface {
    suspend fun getAll(): List<Question>
    suspend fun getById(id: UUID): Question?
    suspend fun getAllQuestionWithAnswers(): List<QuestionWithAnswer>
}