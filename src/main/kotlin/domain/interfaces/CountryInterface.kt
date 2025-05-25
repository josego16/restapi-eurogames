package domain.interfaces

import domain.dto.CountryPageResult
import domain.models.Country

interface CountryInterface {
    suspend fun getAll(): List<Country>
    suspend fun getPaginated(page: Int, size: Int): CountryPageResult
    suspend fun getById(id: Int): Country?
    suspend fun filterCountries(region: String?, subregion: String?, min: Long?, max: Long?): List<Country>
    suspend fun searchCountries(text:String?): List<Country>
    suspend fun sortedCountries(sortBy: String?, descending: Boolean): List<Country>
}