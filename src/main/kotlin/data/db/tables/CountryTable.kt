package data.db.tables

import org.jetbrains.exposed.dao.id.IntIdTable

object CountryTable : IntIdTable("country") {
    val nameCommon = varchar("name_common", 255)
    val nameOfficial = varchar("name_official", 255)
    val capital = varchar("capital", 255)
    val region = varchar("region", 255)
    val subregion = varchar("subregion", 255)
    val population = long("population")
    val timezones = varchar("timezones", 255)
    val continents = varchar("continents", 255)
    val flagUrl = varchar("flag_url", 512).nullable()
    val shieldUrl = varchar("shield_url", 512).nullable()
    val startOfWeek = varchar("start_of_week", 255)
}