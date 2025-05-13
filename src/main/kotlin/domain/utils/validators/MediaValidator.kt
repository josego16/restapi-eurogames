package domain.utils.validators

import domain.dto.MediaCreateDto
import io.ktor.server.plugins.requestvalidation.*

fun RequestValidationConfig.mediaValidation() {
    validate<MediaCreateDto> { media ->
        if (media.countryId.toString().isBlank()) {
            return@validate ValidationResult.Invalid("El ID del país no puede estar vacío.")
        }

        if (media.title.isBlank()) {
            return@validate ValidationResult.Invalid("El título no puede estar vacío.")
        }

        val urlRegex = Regex("^(http|https)://.*\\.(jpg|jpeg|png|svg)\$", RegexOption.IGNORE_CASE)
        if (!urlRegex.matches(media.image?:"")) {
            return@validate ValidationResult.Invalid("La URL de la imagen no es válida.")
        }

        ValidationResult.Valid
    }
}