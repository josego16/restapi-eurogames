package domain.interfaces

import domain.enums.Difficulty
import domain.models.Question
import domain.models.QuestionWithAnswer

interface QuestionInterface {
    suspend fun getAll(): List<Question>
    suspend fun getById(id: Int): Question?
    suspend fun getAllQuestionWithAnswers(): List<QuestionWithAnswer>
    suspend fun getQuestionsWithAnswersByDifficulty(difficulty: Difficulty): List<QuestionWithAnswer>
}