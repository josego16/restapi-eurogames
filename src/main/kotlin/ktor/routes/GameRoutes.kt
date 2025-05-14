package ktor.routes

import domain.usecase.game.ProviderGameUseCase
import io.ktor.http.*
import io.ktor.server.auth.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import java.util.*

fun Routing.gameRouting() {
    authenticate("jwt-auth") {
        route("/game") {
            get {
                val games = ProviderGameUseCase.getAllGames()
                call.respond(games)
            }

            get("/{id}") {
                val idParam = call.parameters["id"]
                val id = runCatching {
                    UUID.fromString(idParam)
                }.onFailure {
                    call.respond(HttpStatusCode.BadRequest, "Id no válido")
                    return@get
                }.getOrDefault(UUID.randomUUID())

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