package ktor.routes

import domain.usecase.country.ProviderCountryUseCase
import io.ktor.http.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import java.util.*

fun Routing.countryRouting() {
    route("/country") {
        get {
            val countries = ProviderCountryUseCase.getAllCountries()
            call.respond(countries)
        }
        get("/{id}") {
            val idParam = call.parameters["id"]
            val id = runCatching {
                UUID.fromString(idParam)
            }.onFailure {
                call.respond(HttpStatusCode.BadRequest, "Id no valido")
                return@get
            }.getOrDefault(UUID.randomUUID())

            val country = ProviderCountryUseCase.getCountryById(id)
            if (country == null) {
                call.respond(HttpStatusCode.NotFound, "Pais no encontrado")
            } else {
                call.respond(country)
            }
        }
    }
}