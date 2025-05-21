package ktor.plugins

import io.ktor.http.*
import io.ktor.server.application.*
import io.ktor.server.metrics.micrometer.*
import io.ktor.server.plugins.callid.*
import io.ktor.server.plugins.calllogging.*
import io.ktor.server.plugins.cors.routing.*
import io.ktor.server.request.*
import ktor.prometheusRegistry
import org.slf4j.event.Level
import java.util.*

fun Application.configureObservatory() {

    install(MicrometerMetrics) {
        registry = prometheusRegistry
    }

    install(CallId) {
        header(HttpHeaders.XRequestId)
        generate { UUID.randomUUID().toString() }
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