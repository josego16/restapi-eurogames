package data.repositories

import data.db.daos.LanguageDao
import data.db.suspendedTransaction
import domain.interfaces.LanguageInterface
import domain.models.Language
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import java.util.*

class LanguageRepositoryImpl : LanguageInterface {
    private val logger: Logger = LoggerFactory.getLogger(LanguageRepositoryImpl::class.java)

    override suspend fun getAll(): List<Language> = runCatching {
        suspendedTransaction {
            LanguageDao.all().map { it.toDomain() }
        }
    }.onFailure {
        logger.error("Error al obtener todas las respuestas")
    }.getOrDefault(emptyList())

    override suspend fun getById(id: UUID): Language? = runCatching {
        suspendedTransaction {
            LanguageDao.findById(id)?.toDomain()
        }
    }.onFailure {
        logger.error("Error al obtener respuesta con ID $id", it)
    }.getOrNull()
}