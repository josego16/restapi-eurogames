package ktor.plugins

import io.ktor.http.*
import io.ktor.server.application.*
import io.ktor.server.plugins.callid.*
import io.ktor.server.plugins.calllogging.*
import io.ktor.server.plugins.cors.routing.*
import io.ktor.server.request.*
import org.slf4j.event.Level

/**
 * Configura la observabilidad de la aplicación Ktor.
 * Incluye CallId, logging de llamadas y CORS.
 * @receiver Aplicación Ktor donde se configura la observabilidad.
 */
fun Application.configureObservatory() {
    install(CallId) {
        header(HttpHeaders.XRequestId)
        generate {
            List(16) {
                (('a'..'z') + ('0'..'9')).random()
            }.joinToString("")
        }
        verify { callId -> callId.isNotEmpty() }
    }

    install(CallLogging) {
        level = Level.INFO
        callIdMdc("call-id")
        filter { call -> call.request.path().startsWith("/") }
    }

    install(CORS) {
        allowMethod(HttpMethod.Options)
        allowMethod(HttpMethod.Put)
        allowMethod(HttpMethod.Delete)
        allowMethod(HttpMethod.Patch)
        allowHeader(HttpHeaders.Authorization)
        allowHeader("MyCustomHeader")
    }
}