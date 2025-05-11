package domain.auth

import com.auth0.jwt.JWT
import com.auth0.jwt.algorithms.Algorithm
import io.ktor.server.auth.jwt.*
import java.util.*

object JwtConfig {
    const val SECRET = "pryviet"
    const val ISSUER = "domain.com"
    const val AUDIENCE = "ktor_audience"
    const val REALM = "ktor_realm"
    private val algorithm = Algorithm.HMAC256(SECRET)

    fun generateToken(userId: UUID): String {
        return JWT.create()
            .withIssuer(ISSUER)
            .withAudience(AUDIENCE)
            .withSubject("Authentication")
            .withClaim("userId", userId.toString())
            .withIssuedAt(Date())
            .withExpiresAt(Date(System.currentTimeMillis() + 1000 * 60 * 60 * 24))
            .sign(algorithm)
    }

    fun configureAuthentication(config: JWTAuthenticationProvider.Config) {
        config.realm = REALM
        config.verifier(
            JWT.require(algorithm)
                .withIssuer(ISSUER)
                .withAudience(AUDIENCE)
                .build()
        )
        config.validate { credential ->
            if (credential.payload.getClaim("userId").asString() != null) {
                JWTPrincipal(credential.payload)
            } else null
        }
    }
}