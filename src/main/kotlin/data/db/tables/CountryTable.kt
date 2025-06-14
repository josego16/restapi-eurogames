package data.db.tables

import org.jetbrains.exposed.dao.id.IntIdTable

/**
 * Tabla de países en la base de datos.
 * Almacena información general y extendida de cada país.
 */
object CountryTable : IntIdTable("country") {
    /** Nombre común del país. */
    val nameCommon = varchar("name_common", 255)

    /** Nombre oficial del país. */
    val nameOfficial = varchar("name_official", 255)

    /** Capital del país. */
    val capital = varchar("capital", 255)

    /** Región a la que pertenece el país. */
    val region = varchar("region", 255)

    /** Subregión a la que pertenece el país. */
    val subregion = varchar("subregion", 255)

    /** Población del país. */
    val population = long("population")

    /** Zonas horarias del país. */
    val timezones = varchar("timezones", 255)

    /** Continentes a los que pertenece el país. */
    val continents = varchar("continents", 255)

    /** URL de la bandera del país. */
    val flagUrl = varchar("flag_url", 512).nullable()

    /** URL del escudo del país. */
    val shieldUrl = varchar("shield_url", 512).nullable()

    /** Día de inicio de la semana en el país. */
    val startOfWeek = varchar("start_of_week", 255)
}