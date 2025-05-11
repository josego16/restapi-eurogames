package domain.interfaces

import domain.models.Question
import java.util.*

interface QuestionInterface {
    suspend fun getAll(): List<Question>
    suspend fun getById(id: UUID): Question?
}