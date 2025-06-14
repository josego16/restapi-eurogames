package domain.auth

import at.favre.lib.crypto.bcrypt.BCrypt

/**
 * Implementación de [PasswordInterface] usando BCrypt para el hash y verificación de contraseñas.
 * Permite validar la fortaleza de la contraseña antes de hashearla.
 */
object PasswordHash : PasswordInterface {
    /** Coste de procesamiento para el algoritmo BCrypt. */
    private val cost: Int = System.getenv("BCRYPT_COST")?.toIntOrNull() ?: 12

    /**
     * Genera el hash de una contraseña usando BCrypt.
     * @param passwd Contraseña en texto plano.
     * @return Hash seguro de la contraseña.
     * @throws IllegalArgumentException si la contraseña no cumple los requisitos de fortaleza o ocurre un error.
     */
    override fun hash(passwd: String): String = try {
        validateStrength(passwd)
        val hashed = BCrypt.withDefaults().hashToString(cost, passwd.toCharArray())
        hashed
    } catch (error: Exception) {
        throw IllegalArgumentException("Error hashing password: ${error.message}", error)
    }

    /**
     * Verifica si la contraseña coincide con el hash usando BCrypt.
     * @param passwd Contraseña en texto plano.
     * @param hashedPassword Hash de la contraseña.
     * @return true si la contraseña es válida, false en caso contrario.
     * @throws IllegalArgumentException si ocurre un error durante la verificación.
     */
    override fun verify(passwd: String, hashedPassword: String): Boolean = try {
        val result = BCrypt.verifyer().verify(passwd.toCharArray(), hashedPassword).verified
        result
    } catch (error: Exception) {
        throw IllegalArgumentException("Error verifying password: ${error.message}", error)
    }

    /**
     * Valida la fortaleza mínima de la contraseña.
     * @param passwd Contraseña a validar.
     * @throws IllegalArgumentException si la contraseña es demasiado corta.
     */
    private fun validateStrength(passwd: String) {
        if (passwd.length < 8) {
            throw IllegalArgumentException("Password length must be at least 8 characters long")
        }
    }
}