package data.db.tables

import domain.enums.MediaType
import org.jetbrains.exposed.dao.id.UUIDTable

object MediaTable : UUIDTable("media") {
    val countryId = reference("country_id", CountryTable)
    val title = varchar("title", 255)
    val mediaType = enumerationByName("media_type", 50, MediaType::class)
    val image = varchar("image_url", 512)
    val description = text("description")
}