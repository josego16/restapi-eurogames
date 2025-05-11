package data.repositories

import data.db.daos.CountryDao
import data.db.suspendedTransaction
import domain.interfaces.CountryInterface
import domain.models.Country
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import java.util.*

class CountryRepositoryImpl : CountryInterface {
    private val logger: Logger = LoggerFactory.getLogger(CountryRepositoryImpl::class.java)

    override suspend fun getAll(): List<Country> = runCatching {
        suspendedTransaction {
            CountryDao.all().map { it.toDomain() }
        }
    }.onFailure {
        logger.error("Error al obtener todas las respuestas")
    }.getOrDefault(emptyList())

    override suspend fun getById(id: UUID): Country? = runCatching {
        suspendedTransaction {
            CountryDao.findById(id)?.toDomain()
        }
    }.onFailure {
        logger.error("Error al obtener respuesta con ID $id", it)
    }.getOrNull()
}