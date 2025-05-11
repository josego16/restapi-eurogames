package domain.utils.validators

import domain.dto.UserLoginDto
import domain.dto.UserRegisterDto
import domain.dto.UserUpdateDto
import io.ktor.server.plugins.requestvalidation.*

fun RequestValidationConfig.usersValidation() {

    val emailRegex = Regex("^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$")

    validate<UserRegisterDto> { user ->
        when {
            user.name.isBlank() -> return@validate ValidationResult.Invalid("El nombre no puede estar vacío.")

            user.email.isBlank() -> return@validate ValidationResult.Invalid("El correo no puede estar vacío.")

            !user.email.matches(emailRegex) -> return@validate ValidationResult.Invalid("El formato del correo no es válido.")

            user.username.isBlank() || user.username.length < 3 ->
                return@validate ValidationResult.Invalid("El nombre de usuario debe tener al menos 3 caracteres.")

            user.password.isBlank() || user.password.length < 8 ->
                return@validate ValidationResult.Invalid("La contraseña debe tener al menos 8 caracteres.")

            else -> ValidationResult.Valid
        }
    }

    validate<UserLoginDto> { user ->
        when {
            user.username.isBlank() ->
                return@validate ValidationResult.Invalid("El nombre de usuario no puede estar vacío.")

            user.password.isBlank() || user.password.length < 8 ->
                return@validate ValidationResult.Invalid("La contraseña debe tener al menos 8 caracteres.")

            else -> ValidationResult.Valid
        }
    }

    validate<UserUpdateDto> { user ->
        when {
            user.name.isBlank() ->
                return@validate ValidationResult.Invalid("El nombre no puede estar vacío.")

            user.email.isBlank() ->
                return@validate ValidationResult.Invalid("El correo no puede estar vacío.")

            !user.email.matches(emailRegex) ->
                return@validate ValidationResult.Invalid("El formato del correo no es válido.")

            user.username.isBlank() || user.username.length < 3 ->
                return@validate ValidationResult.Invalid("El nombre de usuario debe tener al menos 3 caracteres.")

            else -> ValidationResult.Valid
        }
    }
}