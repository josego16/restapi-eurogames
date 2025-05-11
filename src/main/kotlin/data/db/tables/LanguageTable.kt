package data.db.tables

import org.jetbrains.exposed.dao.id.UUIDTable

object LanguageTable : UUIDTable("language") {
    val name = varchar("name", 255)
    val code = varchar("code", 10)
}