package data.repositories

import data.db.daos.AnswerDao
import data.db.suspendedTransaction
import domain.interfaces.AnswerRepository
import domain.models.Answer
import org.slf4j.Logger
import org.slf4j.LoggerFactory

class AnswerRepositoryImpl : AnswerRepository {
    private val logger: Logger = LoggerFactory.getLogger(AnswerRepositoryImpl::class.java)

    /**
     * Obtiene todas las respuestas.
     * @return Lista de respuestas o lista vacía si ocurre un error.
     */
    override suspend fun getAll(): List<Answer> = runCatching {
        suspendedTransaction {
            AnswerDao.all().map { it.toDomain() }
        }
    }.onFailure {
        logger.error("Error al obtener todas las respuestas")
    }.getOrDefault(emptyList())

    /**
     * Obtiene una respuesta por su ID.
     * @param id Identificador de la respuesta.
     * @return Respuesta encontrada o null si no existe o hay error.
     */
    override suspend fun getById(id: Int): Answer? = runCatching {
        suspendedTransaction {
            AnswerDao.findById(id)?.toDomain()
        }
    }.onFailure {
        logger.error("Error al obtener respuesta con ID $id", it)
    }.getOrNull()

    /**
     * Verifica si una respuesta es correcta para una pregunta dada.
     * @param questionId ID de la pregunta.
     * @param answerId ID de la respuesta.
     * @return true si la respuesta es correcta, false en caso contrario o error.
     */
    override suspend fun isAnswerCorrect(questionId: Int, answerId: Int): Boolean = runCatching {
        suspendedTransaction {
            val answer = AnswerDao.findById(answerId)
            answer != null && answer.questionId.id.value == questionId && answer.isCorrect
        }
    }.onFailure {
        logger.error("Error al verificar si la respuesta es correcta para la pregunta $questionId y respuesta $answerId", it)
    }.getOrDefault(false)
}