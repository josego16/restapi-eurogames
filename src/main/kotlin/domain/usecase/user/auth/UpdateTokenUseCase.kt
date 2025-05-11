package domain.usecase.user.auth

import domain.auth.JwtConfig
import domain.interfaces.UserInterface
import io.ktor.server.auth.jwt.*
import java.util.*

class UpdateTokenUseCase(
    private val repository: UserInterface,
    private val jwt: JwtConfig
) {
    suspend operator fun invoke(principal: JWTPrincipal): String? {
        val idClaim = principal.payload.getClaim("userId").asString() ?: return null
        val userId = UUID.fromString(idClaim)
        val newToken = jwt.generateToken(userId)

        repository.updateToken(userId, newToken)
        return newToken
    }
}