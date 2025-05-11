package domain.interfaces

import domain.models.Country
import java.util.*

interface CountryInterface{
    suspend fun getAll(): List<Country>
    suspend fun getById(id: UUID): Country?
}