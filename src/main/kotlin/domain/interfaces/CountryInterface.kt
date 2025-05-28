package domain.interfaces

import domain.dto.CountryPageResult
import domain.models.Country

interface CountryInterface {
    suspend fun getAll(): List<Country>
    suspend fun getPaginated(page: Int, size: Int): CountryPageResult
    suspend fun getById(id: Int): Country?
}