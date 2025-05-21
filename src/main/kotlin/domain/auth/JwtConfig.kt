package domain.auth

import com.auth0.jwt.JWT
import com.auth0.jwt.JWTVerifier
import com.auth0.jwt.algorithms.Algorithm
import domain.usecase.user.ProviderUserUseCase
import io.ktor.server.auth.jwt.*
import java.util.*

object JwtConfig {
    private const val SECRET = "pryviet"
    private const val ISSUER = "domain.com"
    private const val AUDIENCE = "ktor_audience"
    const val REALM = "ktor_realm"
    private val algorithm = Algorithm.HMAC256(SECRET)

    fun generateToken(userId: UUID): String {
        return JWT.create()
            .withIssuer(ISSUER)
            .withAudience(AUDIENCE)
            .withSubject("Authentication")
            .withClaim("userId", userId.toString())
            .withIssuedAt(Date())
            .withExpiresAt(Date(System.currentTimeMillis() + 1000 * 60 * 60 * 24)) // 24h
            .sign(algorithm)
    }

    private fun getVerifier(): JWTVerifier = JWT
        .require(algorithm)
        .withIssuer(ISSUER)
        .withAudience(AUDIENCE)
        .build()

    fun configureAuthentication(config: JWTAuthenticationProvider.Config) {
        config.realm = REALM
        config.verifier(getVerifier())
        config.validate { credential ->
            val userIdStr = credential.payload.getClaim("userId").asString()
            val userId = try {
                UUID.fromString(userIdStr)
            } catch (_: IllegalArgumentException) {
                return@validate null
            }

            val user = ProviderUserUseCase.getUserById(userId)
            if (user != null) {
                JWTPrincipal(credential.payload)
            } else {
                null
            }
        }
    }
}