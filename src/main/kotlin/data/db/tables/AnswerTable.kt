package data.db.tables

import org.jetbrains.exposed.dao.id.IntIdTable

object AnswerTable : IntIdTable("answer") {
    val questionId = reference("question_id", QuestionTable)
    val text = text("text")
    val isCorrect = bool("is_correct")
}