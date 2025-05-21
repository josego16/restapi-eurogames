package data.repositories

import data.db.daos.CountryDao
import data.db.suspendedTransaction
import data.db.tables.CountryTable
import domain.interfaces.CountryInterface
import domain.models.Country
import org.jetbrains.exposed.sql.*
import org.jetbrains.exposed.sql.SqlExpressionBuilder.between
import org.jetbrains.exposed.sql.SqlExpressionBuilder.eq
import org.jetbrains.exposed.sql.SqlExpressionBuilder.greaterEq
import org.jetbrains.exposed.sql.SqlExpressionBuilder.lessEq
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
        logger.error("Error al obtener todos los países", it)
    }.getOrDefault(emptyList())

    override suspend fun getById(id: UUID): Country? = runCatching {
        suspendedTransaction {
            CountryDao.findById(id)?.toDomain()
        }
    }.onFailure {
        logger.error("Error al obtener país con ID $id", it)
    }.getOrNull()

    override suspend fun filterCountries(
        region: String?, subregion: String?, min: Long?, max: Long?
    ): List<Country> = runCatching {
        suspendedTransaction {
            val conditions = mutableListOf<Op<Boolean>>()

            region?.let {
                conditions += CountryTable.region.lowerCase() eq it.lowercase()
            }
            subregion?.let {
                conditions += CountryTable.subregion.lowerCase() eq it.lowercase()
            }

            when {
                min != null && max != null -> conditions += CountryTable.population.between(min, max)
                min != null -> conditions += CountryTable.population greaterEq min
                max != null -> conditions += CountryTable.population lessEq max
            }

            val query = if (conditions.isNotEmpty()) {
                CountryDao.find(conditions.reduce { acc, op -> acc and op })
            } else {
                CountryDao.all()
            }

            query.map { it.toDomain() }
        }
    }.onFailure {
        logger.error("Error al filtrar países", it)
    }.getOrDefault(emptyList())

    override suspend fun searchCountries(text: String?): List<Country> = runCatching {
        if (text.isNullOrBlank()) return@runCatching emptyList()

        suspendedTransaction {
            CountryDao.find {
                (CountryTable.nameOfficial like "%$text%") or
                        (CountryTable.capital like "%$text%") or
                        (CountryTable.region like "%$text%") or
                        (CountryTable.subregion like "%$text%")
            }.map { it.toDomain() }
        }
    }.onFailure {
        logger.error("Error al buscar países con texto '$text'", it)
    }.getOrDefault(emptyList())

    override suspend fun sortedCountries(sortBy: String?, descending: Boolean): List<Country> = runCatching {
        suspendedTransaction {
            val column = when (sortBy?.lowercase()) {
                "population" -> CountryTable.population
                "name" -> CountryTable.nameOfficial
                else -> CountryTable.nameOfficial // valor por defecto
            }

            val order = column to if (descending) SortOrder.DESC else SortOrder.ASC

            CountryDao.all().orderBy(order).map { it.toDomain() }
        }
    }.onFailure {
        logger.error("Error al ordenar países por '$sortBy'", it)
    }.getOrDefault(emptyList())

    suspend fun getAllPaged(limit: Int, offset: Int): Pair<List<Country>, Long> = runCatching {
        suspendedTransaction {
            val total = CountryDao.all().count()
            val items = CountryDao.all().limit(limit).offset(offset.toLong()).map { it.toDomain() }
            Pair(items, total)
        }
    }.onFailure {
        logger.error("Error al obtener países paginados", it)
    }.getOrDefault(Pair(emptyList(), 0L))
}