package data.db.daos

import data.db.tables.CountryTable
import domain.models.Country
import org.jetbrains.exposed.dao.UUIDEntity
import org.jetbrains.exposed.dao.UUIDEntityClass
import org.jetbrains.exposed.dao.id.EntityID
import java.util.*

class CountryDao(id: EntityID<UUID>) : UUIDEntity(id) {
    companion object : UUIDEntityClass<CountryDao>(CountryTable)

    var name by CountryTable.name
    var capital by CountryTable.capital
    var region by CountryTable.region
    var subregion by CountryTable.subregion
    var population by CountryTable.population
    var description by CountryTable.description
    var flagUrl by CountryTable.flagUrl
    var shieldUrl by CountryTable.shieldUrl

    fun toDomain() = Country(
        id.value,
        name,
        capital,
        region,
        subregion,
        population,
        shieldUrl,
        description,
        flagUrl
    )
}