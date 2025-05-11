package data.db.daos

import data.db.tables.MediaTable
import domain.models.Media
import org.jetbrains.exposed.dao.UUIDEntity
import org.jetbrains.exposed.dao.UUIDEntityClass
import org.jetbrains.exposed.dao.id.EntityID
import java.util.*

class MediaDao(id: EntityID<UUID>) : UUIDEntity(id) {
    companion object : UUIDEntityClass<MediaDao>(MediaTable) {
        fun fromDomain(domain: Media, existing: MediaDao? = null): MediaDao {
            return existing ?: new(domain.id) {
                countryId = CountryDao[domain.countryId]
                title = domain.title
                type = domain.type
                img = domain.img
            }
        }
    }

    var countryId by CountryDao referencedOn MediaTable.countryId
    var type by MediaTable.type
    var title by MediaTable.title
    var img by MediaTable.img
    var description by MediaTable.description

    fun toDomain(): Media {
        return Media(
            id.value, countryId.id.value,
            title,
            type,
            img
        )
    }
}