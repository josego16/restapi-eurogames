package ktor.routes

import domain.usecase.country.ProviderCountryUseCase
import io.ktor.http.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import java.util.*

fun Routing.countryRouting() {
    route("/countries") {
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
                call.respond(HttpStatusCode.NotFound, "País no encontrado")
            } else {
                call.respond(country)
            }
        }

        get("/filter") {
            val region = call.request.queryParameters["region"]
            val subregion = call.request.queryParameters["subregion"]
            val minPop = call.request.queryParameters["minPop"]?.toLongOrNull()
            val maxPop = call.request.queryParameters["maxPop"]?.toLongOrNull()

            val filtered = ProviderCountryUseCase.filterCountries(region, subregion, minPop, maxPop)
            call.respond(filtered)
        }

        get("/search") {
            val text = call.request.queryParameters["text"]
            val results = ProviderCountryUseCase.searchCountries(text)
            call.respond(results)
        }

        get("/sort") {
            val sortBy = call.request.queryParameters["by"]
            val desc = call.request.queryParameters["desc"]?.toBooleanStrictOrNull() ?: false

            val sorted = ProviderCountryUseCase.sortedCountries(sortBy, desc)
            call.respond(sorted)
        }
    }
}