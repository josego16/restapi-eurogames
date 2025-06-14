package ktor.routes

import domain.usecase.country.ProviderCountryUseCase
import io.ktor.http.*
import io.ktor.server.auth.*
import io.ktor.server.response.*
import io.ktor.server.routing.*

/**
 * Define las rutas relacionadas con los países.
 *
 * Todas las rutas están protegidas mediante autenticación JWT.
 *
 * ### Rutas (`/countries`)
 * - `GET /countries`: Devuelve la lista completa de países.
 * - `GET /countries/paginated?page={page}&size={size}`: Devuelve una lista paginada de países.
 * - `GET /countries/{id}`: Devuelve los detalles de un país por su ID.
 */
fun Routing.countryRouting() {
    authenticate("jwt-auth") {
        route("/countries") {

            /**
             * Endpoint: GET /countries
             * Devuelve una lista con todos los países disponibles en el sistema.
             */
            get {
                val countries = ProviderCountryUseCase.getAllCountries()
                call.respond(countries)
            }

            /**
             * Endpoint: GET /countries/paginated
             * Devuelve una lista paginada de países.
             *
             * @queryParam page Número de página (por defecto: 0).
             * @queryParam size Tamaño de la página (por defecto: 20).
             */
            get("/paginated") {
                val page = call.request.queryParameters["page"]?.toIntOrNull() ?: 0
                val size = call.request.queryParameters["size"]?.toIntOrNull() ?: 20

                val result = ProviderCountryUseCase.getCountriesPaginated(page, size)
                call.respond(result)
            }

            /**
             * Endpoint: GET /countries/{id}
             * Devuelve los detalles de un país según su ID.
             *
             * Devuelve 400 si el ID no es válido, y 404 si no se encuentra el país.
             */
            get("/{id}") {
                val idParam = call.parameters["id"]
                val id = idParam?.toIntOrNull()
                if (id == null) {
                    call.respond(HttpStatusCode.BadRequest, "Id no válido")
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