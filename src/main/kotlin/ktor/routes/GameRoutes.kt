package ktor.routes

import domain.usecase.game.ProviderGameUseCase
import io.ktor.http.*
import io.ktor.server.auth.*
import io.ktor.server.response.*
import io.ktor.server.routing.*

/**
 * Define las rutas relacionadas con los minijuegos del sistema.
 *
 * Todas las rutas están protegidas mediante autenticación JWT.
 *
 * ### Rutas (`/games`)
 * - `GET /games`: Devuelve todos los minijuegos disponibles.
 * - `GET /games/{id}`: Devuelve un minijuego específico por su ID.
 */
fun Routing.gameRouting() {
    authenticate("jwt-auth") {
        route("/games") {

            /**
             * Endpoint: GET /games
             * Devuelve una lista de todos los minijuegos disponibles.
             */
            get {
                val games = ProviderGameUseCase.getAllGames()
                call.respond(games)
            }

            /**
             * Endpoint: GET /games/{id}
             * Devuelve un minijuego por su ID.
             *
             * Devuelve 400 si el ID es inválido, y 404 si no se encuentra el minijuego.
             */
            get("/{id}") {
                val idParam = call.parameters["id"]
                val id = idParam?.toIntOrNull()
                if (id == null) {
                    call.respond(HttpStatusCode.BadRequest, "Id no válido")
                    return@get
                }

                val game = ProviderGameUseCase.getGameById(id)
                if (game == null) {
                    call.respond(HttpStatusCode.NotFound, "Minijuego no encontrado")
                } else {
                    call.respond(game)
                }
            }
        }
    }
}