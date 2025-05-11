package data.db.daos

import data.db.tables.QuestionTable
import domain.models.Question
import org.jetbrains.exposed.dao.UUIDEntity
import org.jetbrains.exposed.dao.UUIDEntityClass
import org.jetbrains.exposed.dao.id.EntityID
import java.util.*

class QuestionDao(id: EntityID<UUID>) : UUIDEntity(id) {
    companion object : UUIDEntityClass<QuestionDao>(QuestionTable)

    var statement by QuestionTable.statement
    var type by QuestionTable.type
    var difficulty by QuestionTable.difficulty
    var imageUrl by QuestionTable.imageUrl
    var responseMode by QuestionTable.responseMode
    var countryId by CountryDao referencedOn QuestionTable.countryId

    fun toDomain() = Question(
        id.value,
        countryId.id.value,
        statement,
        type,
        responseMode,
        difficulty,
        imageUrl,
    )
}