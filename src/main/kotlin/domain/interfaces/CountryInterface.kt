package domain.interfaces

import domain.models.Country
import java.util.*

interface CountryInterface {
    suspend fun getAll(): List<Country>
    suspend fun getById(id: UUID): Country?
    suspend fun filterCountries(region: String?, subregion: String?, min: Long?, max: Long?): List<Country>
    suspend fun searchCountries(text:String?): List<Country>
    suspend fun sortedCountries(sortBy: String?, descending: Boolean): List<Country>
}