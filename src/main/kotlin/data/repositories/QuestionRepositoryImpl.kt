package data.repositories

import data.db.daos.AnswerDao
import data.db.daos.QuestionDao
import data.db.suspendedTransaction
import data.db.tables.AnswerTable
import domain.interfaces.QuestionInterface
import domain.models.Question
import domain.models.QuestionWithAnswer
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import java.util.*

class QuestionRepositoryImpl : QuestionInterface {
    private val logger: Logger = LoggerFactory.getLogger(QuestionRepositoryImpl::class.java)

    override suspend fun getAll(): List<Question> = runCatching {
        suspendedTransaction {
            QuestionDao.all().map { it.toDomain() }
        }
    }.onFailure {
        logger.error("Error al obtener todas las respuestas",it)
    }.getOrDefault(emptyList())

    override suspend fun getById(id: UUID): Question? = runCatching {
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
}