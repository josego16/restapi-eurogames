package data.db.tables

import org.jetbrains.exposed.dao.id.IntIdTable

/**
 * Tabla de usuarios en la base de datos.
 * Almacena la información de los usuarios registrados.
 */
object UserTable : IntIdTable("auth") {
    /** Nombre completo del usuario. */
    val fullName = varchar("full_name", 255)

    /** Nombre de usuario único. */
    val username = varchar("username", 255)

    /** Correo electrónico del usuario. */
    val email = varchar("email", 255)

    /** Contraseña cifrada del usuario. */
    val password = varchar("password", 255)

    /** URL del avatar del usuario. */
    val avatar = varchar("avatar", 512).nullable()
}