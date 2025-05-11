package data.db.daos

import data.db.tables.AnswerTable
import domain.models.Answer
import org.jetbrains.exposed.dao.UUIDEntity
import org.jetbrains.exposed.dao.UUIDEntityClass
import org.jetbrains.exposed.dao.id.EntityID
import java.util.*

class AnswerDao(id: EntityID<UUID>) : UUIDEntity(id) {
    companion object : UUIDEntityClass<AnswerDao>(AnswerTable)

    var questionId by QuestionDao.Companion referencedOn AnswerTable.questionId
    var text by AnswerTable.text
    var isCorrect by AnswerTable.isCorrect

    fun toDomain() = Answer(id.value, questionId.id.value, text, isCorrect)
}