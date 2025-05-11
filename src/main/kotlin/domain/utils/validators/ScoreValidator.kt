package domain.utils.validators

import domain.dto.ScoreCreateDto
import io.ktor.server.plugins.requestvalidation.*

fun RequestValidationConfig.scoreValidation() {
    validate<ScoreCreateDto> { score ->
        if (score.userId.toString().isBlank()) {
            return@validate ValidationResult.Invalid("El ID de usuario no puede estar vacío.")
        }

        if (score.scoreValue < 0.0) {
            return@validate ValidationResult.Invalid("El puntaje no puede ser negativo.")
        }

        ValidationResult.Valid
    }
}