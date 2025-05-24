package data.repositories

import data.db.daos.AnswerDao
import data.db.suspendedTransaction
import domain.interfaces.AnswerInterface
import domain.models.Answer
import org.slf4j.Logger
import org.slf4j.LoggerFactory

class AnswerRepositoryImpl : AnswerInterface {
    private val logger: Logger = LoggerFactory.getLogger(AnswerRepositoryImpl::class.java)

    override suspend fun getAll(): List<Answer> = runCatching {
        suspendedTransaction {
            AnswerDao.all().map { it.toDomain() }
        }
    }.onFailure {
        logger.error("Error al obtener todas las respuestas")
    }.getOrDefault(emptyList())

    override suspend fun getById(id: Int): Answer? = runCatching {
        suspendedTransaction {
            AnswerDao.findById(id)?.toDomain()
        }
    }.onFailure {
        logger.error("Error al obtener respuesta con ID $id", it)
    }.getOrNull()
}