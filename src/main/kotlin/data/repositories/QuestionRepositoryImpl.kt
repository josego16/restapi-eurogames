package data.repositories

import data.db.daos.QuestionDao
import data.db.suspendedTransaction
import domain.interfaces.QuestionInterface
import domain.models.Question
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
        logger.error("Error al obtener todas las respuestas")
    }.getOrDefault(emptyList())

    override suspend fun getById(id: UUID): Question? = runCatching {
        suspendedTransaction {
            QuestionDao.findById(id)?.toDomain()
        }
    }.onFailure {
        logger.error("Error al obtener respuesta con ID $id", it)
    }.getOrNull()
}