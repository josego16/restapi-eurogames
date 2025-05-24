package data.db.daos

import data.db.tables.AnswerTable
import domain.models.Answer
import org.jetbrains.exposed.dao.IntEntity
import org.jetbrains.exposed.dao.IntEntityClass
import org.jetbrains.exposed.dao.id.EntityID

class AnswerDao(id: EntityID<Int>) : IntEntity(id) {
    companion object : IntEntityClass<AnswerDao>(AnswerTable)

    var questionId by QuestionDao.Companion referencedOn AnswerTable.questionId
    var text by AnswerTable.text
    var isCorrect by AnswerTable.isCorrect

    fun toDomain() = Answer(id.value, questionId.id.value, text, isCorrect)
}