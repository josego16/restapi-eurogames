package ktor

import io.ktor.server.application.*
import io.ktor.server.netty.*
import ktor.plugins.*

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