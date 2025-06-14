package ktor.plugins

import io.ktor.server.application.*
import org.jetbrains.exposed.sql.Database

/**
 * Configura la conexión a la base de datos usando parámetros del entorno de Ktor.
 * Lanza un log informativo si la conexión es exitosa o un error si falla.
 * @receiver Aplicación Ktor donde se configura la base de datos.
 */
fun Application.configureDatabases() {
    val driver = environment.config.property("ktor.database.driver").getString()
    val url = environment.config.property("ktor.database.url").getString()
    val username = environment.config.property("ktor.database.username").getString()
    val password = environment.config.property("ktor.database.password").getString()

    try {
        Database.connect(
            url = url,
            driver = driver,
            user = username,
            password = password
        )
        log.info("Connected to database at $url")
    } catch (error: Exception) {
        log.error("Failed to connect to database: ${error.message}")
    }
}