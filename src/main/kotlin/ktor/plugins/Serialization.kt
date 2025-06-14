package ktor.plugins

import io.ktor.serialization.kotlinx.json.*
import io.ktor.server.application.*
import io.ktor.server.plugins.contentnegotiation.*
import kotlinx.serialization.json.Json

/**
 * Configura la serialización JSON para la aplicación Ktor.
 * Utiliza kotlinx.serialization y permite pretty print, tolerancia y claves desconocidas.
 * @receiver Aplicación Ktor donde se configura la serialización.
 */
fun Application.configureSerialization() {
    install(ContentNegotiation) {
        json(
            Json {
                prettyPrint = true
                isLenient = true
                ignoreUnknownKeys = true
            }
        )
    }
}