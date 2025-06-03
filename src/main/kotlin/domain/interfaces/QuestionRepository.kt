package domain.interfaces

import domain.enums.Difficulty
import domain.enums.QuestionType
import domain.models.Question
import domain.models.QuestionWithAnswer

interface QuestionRepository {
    suspend fun getAll(): List<Question>
    suspend fun getById(id: Int): Question?
    suspend fun getAllQuestionWithAnswers(): List<QuestionWithAnswer>
    suspend fun getQuestionWithAnswersById(id: Int): QuestionWithAnswer?
    suspend fun getQuestionsWithAnswersByDifficulty(difficulty: Difficulty?, category: QuestionType?): List<QuestionWithAnswer>
}