package domain.auth

import com.auth0.jwt.JWT
import com.auth0.jwt.JWTVerifier
import com.auth0.jwt.algorithms.Algorithm
import domain.usecase.user.ProviderUserUseCase
import io.ktor.server.auth.jwt.*
import java.util.*

/**
 * Configuración y utilidades para la autenticación JWT.
 * Permite generar y verificar tokens JWT y configurar la autenticación en Ktor.
 */
object JwtConfig {
    private const val SECRET = "pryviet"
    private const val ISSUER = "domain.com"
    private const val AUDIENCE = "ktor_audience"
    const val REALM = "ktor_realm"
    private val algorithm = Algorithm.HMAC256(SECRET)

    /**
     * Genera un token JWT para el usuario especificado.
     * @param userId ID del usuario.
     * @return Token JWT firmado.
     */
    fun generateToken(userId: Int): String {
        return JWT.create()
            .withIssuer(ISSUER)
            .withAudience(AUDIENCE)
            .withSubject("Authentication")
            .withClaim("userId", userId) // Guardamos como Int directamente
            .withIssuedAt(Date())
            .withExpiresAt(Date(System.currentTimeMillis() + 1000 * 60 * 15))
            .sign(algorithm)
    }

    /**
     * Obtiene el verificador JWT configurado.
     * @return [JWTVerifier] para validar tokens.
     */
    private fun getVerifier(): JWTVerifier = JWT
        .require(algorithm)
        .withIssuer(ISSUER)
        .withAudience(AUDIENCE)
        .build()

    /**
     * Configura la autenticación JWT en Ktor.
     * @param config Configuración de autenticación JWT de Ktor.
     */
    fun configureAuthentication(config: JWTAuthenticationProvider.Config) {
        config.realm = REALM
        config.verifier(getVerifier())
        config.validate { credential ->
            val userId = credential.payload.getClaim("userId").asInt()
            val user = ProviderUserUseCase.getUserById(userId)
            if (user != null) {
                JWTPrincipal(credential.payload)
            } else {
                null
            }
        }
    }
}