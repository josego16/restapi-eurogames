package data.db.daos

import data.db.tables.UserTable
import domain.models.User
import org.jetbrains.exposed.dao.IntEntity
import org.jetbrains.exposed.dao.IntEntityClass
import org.jetbrains.exposed.dao.id.EntityID

/**
 * DAO para la entidad User.
 * Permite el acceso y manipulación de usuarios en la base de datos.
 * @property fullName Nombre completo del usuario.
 * @property username Nombre de usuario único.
 * @property email Correo electrónico del usuario.
 * @property password Contraseña cifrada del usuario.
 * @property avatar URL del avatar del usuario.
 */
class UserDao(id: EntityID<Int>) : IntEntity(id) {
    companion object : IntEntityClass<UserDao>(UserTable) {
        /**
         * Crea o actualiza un DAO a partir de un modelo de dominio [User].
         * @param domain Modelo de dominio [User].
         * @param existing Instancia existente de [UserDao] (opcional).
         * @return [UserDao] creado o actualizado.
         */
        fun fromDomain(domain: User, existing: UserDao? = null): UserDao {
            fun UserDao.assignFromDomain(domain: User) {
                fullName = domain.fullName
                username = domain.username
                email = domain.email
                password = domain.password
                avatar = domain.avatar ?: ""
            }
            return existing?.apply {
                assignFromDomain(domain)
            } ?: if (domain.id == 0) {
                new {
                    assignFromDomain(domain)
                }
            } else {
                new(domain.id) {
                    assignFromDomain(domain)
                }
            }
        }
    }

    var fullName by UserTable.fullName
    var username by UserTable.username
    var email by UserTable.email
    var password by UserTable.password
    var avatar by UserTable.avatar

    /**
     * Convierte el DAO a un modelo de dominio [User].
     * @return [User] con los datos del usuario.
     */
    fun toDomain(): User {
        return User(
            id.value,
            fullName,
            username,
            email,
            password,
            avatar
        )
    }
}