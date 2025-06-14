package data.db.daos

import data.db.tables.CountryTable
import domain.models.Country
import org.jetbrains.exposed.dao.IntEntity
import org.jetbrains.exposed.dao.IntEntityClass
import org.jetbrains.exposed.dao.id.EntityID

/**
 * DAO para la entidad Country.
 * Permite el acceso y manipulación de países en la base de datos.
 * @property nameCommon Nombre común del país.
 * @property nameOfficial Nombre oficial del país.
 * @property capital Capital del país (puede contener varias separadas por coma).
 * @property region Región del país.
 * @property subregion Subregión del país.
 * @property population Población del país.
 * @property timezones Zonas horarias (separadas por coma).
 * @property continents Continentes (separados por coma).
 * @property flagUrl URL de la bandera.
 * @property shieldUrl URL del escudo.
 * @property startOfWeek Día de inicio de la semana.
 */
class CountryDao(id: EntityID<Int>) : IntEntity(id) {
    companion object : IntEntityClass<CountryDao>(CountryTable)

    var nameCommon by CountryTable.nameCommon
    var nameOfficial by CountryTable.nameOfficial
    var capital by CountryTable.capital
    var region by CountryTable.region
    var subregion by CountryTable.subregion
    var population by CountryTable.population
    var timezones by CountryTable.timezones
    var continents by CountryTable.continents
    var flagUrl by CountryTable.flagUrl
    var shieldUrl by CountryTable.shieldUrl
    var startOfWeek by CountryTable.startOfWeek

    /**
     * Convierte el DAO a un modelo de dominio [Country].
     * @return [Country] con los datos del país.
     */
    fun toDomain() = Country(
        id.value,
        nameCommon,
        nameOfficial,
        capital = capital.split(",").map { it.trim() }.filter { it.isNotEmpty() },
        region,
        subregion,
        population,
        timezones = timezones.split(",").map { it.trim() }.filter { it.isNotEmpty() },
        continents = continents.split(",").map { it.trim() }.filter { it.isNotEmpty() },
        flagUrl,
        shieldUrl,
        startOfWeek
    )
}