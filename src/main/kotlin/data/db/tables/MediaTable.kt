package data.db.tables

import domain.enums.MediaType
import org.jetbrains.exposed.dao.id.UUIDTable

object MediaTable : UUIDTable("media") {
    val countryId = reference("country_id", CountryTable)
    val type = enumerationByName("type", 50, MediaType::class)
    val title = varchar("title", 255)
    val img = varchar("img", 512)
    val description = text("description")
}