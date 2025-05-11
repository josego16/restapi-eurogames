package data.db.tables

import org.jetbrains.exposed.dao.id.UUIDTable

object AnswerTable : UUIDTable("answer") {
    val questionId = reference("question_id", QuestionTable)
    val text = text("text")
    val isCorrect = bool("is_correct")
}