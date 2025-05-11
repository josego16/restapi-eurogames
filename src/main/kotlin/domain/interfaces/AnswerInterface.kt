package domain.interfaces

import domain.models.Answer
import java.util.*

interface AnswerInterface{
    suspend fun getAll(): List<Answer>
    suspend fun getById(id: UUID): Answer?
}