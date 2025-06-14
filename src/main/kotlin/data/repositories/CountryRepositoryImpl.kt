package data.repositories

import data.db.daos.CountryDao
import data.db.suspendedTransaction
import domain.dto.CountryPageResult
import domain.interfaces.CountryRepository
import domain.models.Country
import org.slf4j.Logger
import org.slf4j.LoggerFactory

class CountryRepositoryImpl : CountryRepository {
    private val logger: Logger = LoggerFactory.getLogger(CountryRepositoryImpl::class.java)

    /**
     * Obtiene todos los países.
     * @return Lista de países o lista vacía si ocurre un error.
     */
    override suspend fun getAll(): List<Country> = runCatching {
        suspendedTransaction {
            CountryDao.all().map { it.toDomain() }
        }
    }.onFailure {
        logger.error("Error al obtener todos los países", it)
    }.getOrDefault(emptyList())

    /**
     * Obtiene una página de países.
     * @param page Número de página (empezando en 0).
     * @param size Tamaño de la página.
     * @return Resultado de la página con países y total de elementos, o vacío si hay error.
     */
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

    /**
     * Obtiene un país por su ID.
     * @param id Identificador del país.
     * @return País encontrado o null si no existe o hay error.
     */
    override suspend fun getById(id: Int): Country? = runCatching {
        suspendedTransaction {
            CountryDao.findById(id)?.toDomain()
        }
    }.onFailure {
        logger.error("Error al obtener país con ID $id", it)
    }.getOrNull()
}