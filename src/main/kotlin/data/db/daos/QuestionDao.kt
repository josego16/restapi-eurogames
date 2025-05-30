package data.db.daos

import data.db.tables.QuestionTable
import domain.models.Question
import org.jetbrains.exposed.dao.IntEntity
import org.jetbrains.exposed.dao.IntEntityClass
import org.jetbrains.exposed.dao.id.EntityID

class QuestionDao(id: EntityID<Int>) : IntEntity(id) {
    companion object : IntEntityClass<QuestionDao>(QuestionTable)

    var statement by QuestionTable.statement
    var questionType by QuestionTable.questionType
    var difficulty by QuestionTable.difficulty
    var flagUrl by QuestionTable.flagUrl
    var coatUrl by QuestionTable.coatUrl
    var responseMode by QuestionTable.responseMode

    fun toDomain() = Question(
        id.value,
        statement,
        questionType,
        responseMode,
        difficulty,
        flagUrl,
        coatUrl
    )
}