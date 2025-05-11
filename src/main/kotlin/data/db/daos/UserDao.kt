package data.db.daos

import data.db.tables.UserTable
import domain.models.User
import org.jetbrains.exposed.dao.UUIDEntity
import org.jetbrains.exposed.dao.UUIDEntityClass
import org.jetbrains.exposed.dao.id.EntityID
import java.util.*

class UserDao(id: EntityID<UUID>) : UUIDEntity(id) {
    companion object : UUIDEntityClass<UserDao>(UserTable) {
        fun fromDomain(domain: User, existing: UserDao? = null): UserDao {
            return existing ?: new(domain.id) {
                name = domain.name
                username = domain.username
                email = domain.email
                password = domain.password
                avatar = domain.avatar ?: ""
            }
        }
    }

    var name by UserTable.name
    var username by UserTable.username
    var email by UserTable.email
    var password by UserTable.password
    var avatar by UserTable.avatar

    // Convertir el DAO a un modelo de dominio (User)
    fun toDomain(): User {
        return User(
            id = id.value,
            name = name,
            username = username,
            email = email,
            password = password,
            avatar = avatar
        )
    }
}
