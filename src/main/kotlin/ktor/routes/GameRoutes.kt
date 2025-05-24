package ktor.routes

import domain.usecase.game.ProviderGameUseCase
import io.ktor.http.*
import io.ktor.server.auth.*
import io.ktor.server.response.*
import io.ktor.server.routing.*

fun Routing.gameRouting() {
    authenticate("jwt-auth") {
        route("/games") {
            get {
                val games = ProviderGameUseCase.getAllGames()
                call.respond(games)
            }
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