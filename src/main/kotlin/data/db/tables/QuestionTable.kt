package data.db.tables

import domain.enums.Difficulty
import domain.enums.QuestionType
import domain.enums.ResponseMode
import org.jetbrains.exposed.dao.id.IntIdTable

object QuestionTable : IntIdTable("question") {
    val statement = text("statement")
    val questionType = enumerationByName("question_type", 50, QuestionType::class)
    val responseMode = enumerationByName("response_mode", 50, ResponseMode::class)
    val difficulty = enumerationByName("difficulty", 50, Difficulty::class)
    val imageUrl = varchar("image_url", 512).nullable()
}