package data.db.daos

import data.db.tables.CountryTable
import domain.models.Country
import org.jetbrains.exposed.dao.UUIDEntity
import org.jetbrains.exposed.dao.UUIDEntityClass
import org.jetbrains.exposed.dao.id.EntityID
import java.util.*

class CountryDao(id: EntityID<UUID>) : UUIDEntity(id) {
    companion object : UUIDEntityClass<CountryDao>(CountryTable)

    var nameCommon by CountryTable.nameCommon
    var nameOfficial by CountryTable.nameOfficial
    var capital by CountryTable.capital
    var region by CountryTable.region
    var subregion by CountryTable.subregion
    var language by CountryTable.language
    var population by CountryTable.population
    var timezones by CountryTable.timezones
    var continents by CountryTable.continents
    var flagUrl by CountryTable.flagUrl
    var flagDescription by CountryTable.flagDescription
    var shieldUrl by CountryTable.shieldUrl
    var startOfWeek by CountryTable.startOfWeek

    fun toDomain() = Country(
        id.value,
        nameCommon,
        nameOfficial,
        capital,
        region,
        subregion,
        language,
        population,
        emptyList(),
        continents,
        flagUrl,
        flagDescription,
        shieldUrl,
        startOfWeek
    )
}