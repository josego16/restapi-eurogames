package data.db.daos

import data.db.tables.LanguageTable
import domain.models.Language
import org.jetbrains.exposed.dao.UUIDEntity
import org.jetbrains.exposed.dao.UUIDEntityClass
import org.jetbrains.exposed.dao.id.EntityID
import java.util.*

class LanguageDao(id: EntityID<UUID>) : UUIDEntity(id) {
    companion object : UUIDEntityClass<LanguageDao>(LanguageTable)

    var name by LanguageTable.name
    var code by LanguageTable.code

    fun toDomain(): Language {
        return Language(id.value, name, code)
    }
}