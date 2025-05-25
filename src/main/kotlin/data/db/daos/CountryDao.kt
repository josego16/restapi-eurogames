package data.db.daos

import data.db.tables.CountryTable
import domain.models.Country
import org.jetbrains.exposed.dao.IntEntity
import org.jetbrains.exposed.dao.IntEntityClass
import org.jetbrains.exposed.dao.id.EntityID

class CountryDao(id: EntityID<Int>) : IntEntity(id) {
    companion object : IntEntityClass<CountryDao>(CountryTable)

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
    var shieldUrl by CountryTable.shieldUrl
    var startOfWeek by CountryTable.startOfWeek

    fun toDomain() = Country(
        id.value,
        nameCommon,
        nameOfficial,
        capital = emptyList(),
        region,
        subregion,
        language,
        population,
        timezones = emptyList(),
        continents = emptyList(),
        flagUrl,
        shieldUrl,
        startOfWeek
    )
}