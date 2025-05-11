package domain.utils.validators

import domain.dto.GameSessionCreateDto
import io.ktor.server.plugins.requestvalidation.*

fun RequestValidationConfig.gameSessionValidation() {
    validate<GameSessionCreateDto> { session ->
        if (session.userId.toString().isBlank()) {
            return@validate ValidationResult.Invalid("El ID de usuario no puede estar vacío.")
        }

        ValidationResult.Valid
    }
}