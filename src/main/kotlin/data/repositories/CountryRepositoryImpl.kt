package data.repositories

import data.db.daos.CountryDao
import data.db.suspendedTransaction
import domain.dto.CountryPageResult
import domain.interfaces.CountryInterface
import domain.models.Country
import org.slf4j.Logger
import org.slf4j.LoggerFactory

class CountryRepositoryImpl : CountryInterface {
    private val logger: Logger = LoggerFactory.getLogger(CountryRepositoryImpl::class.java)

    override suspend fun getAll(): List<Country> = runCatching {
        suspendedTransaction {
            CountryDao.all().map { it.toDomain() }
        }
    }.onFailure {
        logger.error("Error al obtener todos los países", it)
    }.getOrDefault(emptyList())

    override suspend fun getPaginated(page: Int, size: Int): CountryPageResult = runCatching {
        suspendedTransaction {
            val totalItems = CountryDao.count()
            val offset = page * size

            val countries = CountryDao.all()
                .limit(count = size).offset(start = offset.toLong())
                .map { it.toDomain() }

            CountryPageResult(
                countries = countries,
                totalItems = totalItems.toInt()
            )
        }
    }.onFailure {
        logger.error("Error al paginar países", it)
    }.getOrDefault(CountryPageResult(emptyList(), 0))

    override suspend fun getById(id: Int): Country? = runCatching {
        suspendedTransaction {
            CountryDao.findById(id)?.toDomain()
        }
    }.onFailure {
        logger.error("Error al obtener país con ID $id", it)
    }.getOrNull()
}