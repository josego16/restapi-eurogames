package data.repositories

import data.db.daos.AnswerDao
import data.db.daos.QuestionDao
import data.db.suspendedTransaction
import data.db.tables.AnswerTable
import data.db.tables.QuestionTable
import domain.enums.Difficulty
import domain.interfaces.QuestionRepository
import domain.models.Question
import domain.models.QuestionWithAnswer
import org.slf4j.Logger
import org.slf4j.LoggerFactory

class QuestionRepositoryImpl : QuestionRepository {
    private val logger: Logger = LoggerFactory.getLogger(QuestionRepositoryImpl::class.java)

    override suspend fun getAll(): List<Question> = runCatching {
        suspendedTransaction {
            QuestionDao.all().map { it.toDomain() }
        }
    }.onFailure {
        logger.error("Error al obtener todas las respuestas", it)
    }.getOrDefault(emptyList())

    override suspend fun getById(id: Int): Question? = runCatching {
        suspendedTransaction {
            QuestionDao.findById(id)?.toDomain()
        }
    }.onFailure {
        logger.error("Error al obtener respuesta con ID $id", it)
    }.getOrNull()

    override suspend fun getAllQuestionWithAnswers(): List<QuestionWithAnswer> = runCatching {
        suspendedTransaction {
            QuestionDao.all().map { questionDao ->
                val question = questionDao.toDomain()
                val answers = AnswerDao.find { AnswerTable.questionId eq question.id }.map { it.toDomain() }
                QuestionWithAnswer(question, answers)
            }
        }
    }.onFailure {
        logger.error("Error al obtener todas las preguntas con respuestas", it)
    }.getOrDefault(emptyList())

    override suspend fun getQuestionsWithAnswersByDifficulty(difficulty: Difficulty): List<QuestionWithAnswer> =
        runCatching {
            suspendedTransaction {
                QuestionDao.find { QuestionTable.difficulty eq difficulty }.map { questionDao ->
                    val question = questionDao.toDomain()
                    val answers = AnswerDao.find { AnswerTable.questionId eq question.id }.map { it.toDomain() }
                    QuestionWithAnswer(question, answers)
                }
            }
        }.onFailure {
            logger.error("Error al obtener preguntas con respuestas por dificultad $difficulty", it)
        }.getOrDefault(emptyList())
}