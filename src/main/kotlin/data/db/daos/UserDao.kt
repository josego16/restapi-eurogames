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
                fullName = domain.fullName
                username = domain.username
                password = domain.password
                email = domain.email
                avatar = domain.avatar ?: ""
            }
        }
    }

    var fullName by UserTable.fullName
    var username by UserTable.username
    var email by UserTable.email
    var password by UserTable.password
    var avatar by UserTable.avatar

    // Convertir el DAO a un modelo de dominio (User)
    fun toDomain(): User {
        return User(
            id.value,
            fullName,
            username,
            password,
            email,
            avatar
        )
    }
}
