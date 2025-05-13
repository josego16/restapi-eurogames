package ktor

import io.ktor.server.application.*
import io.ktor.server.netty.*
import io.micrometer.prometheusmetrics.PrometheusConfig
import io.micrometer.prometheusmetrics.PrometheusMeterRegistry
import ktor.plugins.*

val prometheusRegistry = PrometheusMeterRegistry(PrometheusConfig.DEFAULT)

fun main(args: Array<String>) {
    EngineMain.main(args)
}
fun Application.module() {
    configureDatabases()
    configureSecurity()
    configureSerialization()
    configureRouting()
    configureValidation()
    configureStatusPages()
    configureObservatory()
}