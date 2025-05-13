package ktor.routes

import domain.dto.MediaCreateDto
import domain.dto.MediaUpdateDto
import domain.usecase.media.ProviderMediaUseCase
import io.ktor.http.*
import io.ktor.server.auth.*
import io.ktor.server.request.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import java.util.*

fun Routing.mediaRouting() {
    authenticate("jwt-auth") {
        route("/media") {
            get {
                val scores = ProviderMediaUseCase.getAllMedia()
                call.respond(scores)
            }

            get("/{id}") {
                val idParam = call.parameters["id"]
                val id = runCatching {
                    UUID.fromString(idParam)
                }.onFailure {
                    call.respond(HttpStatusCode.BadRequest, "Id no valido")
                    return@get
                }.getOrDefault(UUID.randomUUID())

                val score = ProviderMediaUseCase.getMediaById(id)
                if (score == null) {
                    call.respond(HttpStatusCode.NotFound, "Usuario no encontrado")
                } else {
                    call.respond(score)
                }
            }
            post {
                val dto = call.receive<MediaCreateDto>()
                val newMedia = ProviderMediaUseCase.createMedia(dto)

                if (newMedia == null) {
                    call.respond(HttpStatusCode.Conflict, "Ya existe una imagen asociada a este id")
                } else {
                    call.respond(newMedia)
                }
            }
            patch {
                val updateMedia = call.receive<MediaUpdateDto>()

                val idParam = call.parameters["id"]
                val idMedia = runCatching {
                    UUID.fromString(idParam)
                }.onFailure {
                    call.respond(HttpStatusCode.BadRequest, "Id no valido")
                    return@patch
                }.getOrDefault(UUID.randomUUID())

                val media = ProviderMediaUseCase.updateMedia(idMedia, updateMedia)
                if (media == null) {
                    call.respond(HttpStatusCode.NotFound, "No se ha podido actualizar la imagen")
                } else {
                    call.respond(media)
                }
            }
            delete {
                val idParam = call.parameters["id"]
                val idMedia = runCatching {
                    UUID.fromString(idParam)
                }.onFailure {
                    call.respond(HttpStatusCode.BadRequest, "Id no valido")
                    return@delete
                }.getOrDefault(UUID.randomUUID())

                idParam?.let {
                    val media = ProviderMediaUseCase.deleteMedia(idMedia)
                    if (!media) {
                        call.respond(HttpStatusCode.NotFound, "No se ha podido eliminar la imagen")
                    } else {
                        call.respond(HttpStatusCode.NoContent)
                    }
                } ?: runCatching {
                    call.respond(HttpStatusCode.BadRequest, "Id no valido")
                }
                return@delete
            }
        }
    }
}