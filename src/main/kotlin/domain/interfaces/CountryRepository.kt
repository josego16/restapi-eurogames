package domain.interfaces

import domain.dto.CountryPageResult
import domain.models.Country

/**
 * Repositorio para acceder a datos de países.
 */
interface CountryRepository {

    /**
     * Obtiene todos los países disponibles.
     */
    suspend fun getAll(): List<Country>

    /**
     * Obtiene países paginados.
     *
     * @param page Número de página.
     * @param size Tamaño de cada página.
     * @return Resultado de página con países y metadata.
     */
    suspend fun getPaginated(page: Int, size: Int): CountryPageResult

    /**
     * Obtiene un país por su ID.
     *
     * @param id Identificador del país.
     * @return El país correspondiente o null si no existe.
     */
    suspend fun getById(id: Int): Country?
}