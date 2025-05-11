package data.db.tables

import org.jetbrains.exposed.dao.id.UUIDTable

object CountryTable : UUIDTable("country") {
    val name = varchar("name", 255)
    val capital = varchar("capital", 255)
    val region = varchar("region", 255)
    val subregion = varchar("subregion", 255)
    val population = long("population")
    val description = text("description")
    val flagUrl = varchar("flag_url", 512)
    val shieldUrl = varchar("shield_url", 512)
}