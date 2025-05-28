package ktor.routes

import domain.usecase.country.ProviderCountryUseCase
import io.ktor.http.*
import io.ktor.server.auth.*
import io.ktor.server.response.*
import io.ktor.server.routing.*

fun Routing.countryRouting() {
    authenticate("jwt-auth") {
        route("/countries") {
            get {
                val countries = ProviderCountryUseCase.getAllCountries()
                call.respond(countries)
            }
            get("/paginated") {
                val page = call.request.queryParameters["page"]?.toIntOrNull() ?: 0
                val size = call.request.queryParameters["size"]?.toIntOrNull() ?: 20

                val result = ProviderCountryUseCase.getCountriesPaginated(page, size)
                call.respond(result)
            }

            get("/{id}") {
                val idParam = call.parameters["id"]
                val id = idParam?.toIntOrNull()
                if (id == null) {
                    call.respond(HttpStatusCode.BadRequest, "Id no valido")
                    return@get
                }

                val country = ProviderCountryUseCase.getCountryById(id)
                if (country == null) {
                    call.respond(HttpStatusCode.NotFound, "País no encontrado")
                } else {
                    call.respond(country)
                }
            }
        }
    }
}