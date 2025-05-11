package data.db.tables

import org.jetbrains.exposed.dao.id.UUIDTable

object UserTable : UUIDTable("auth") {
    val name = varchar("name", 255)
    val username = varchar("username", 255)
    val email = varchar("email", 255)
    val password = varchar("password", 255)
    val avatar = varchar("avatar", 512)
}
