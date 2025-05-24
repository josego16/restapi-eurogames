package domain.auth

import at.favre.lib.crypto.bcrypt.BCrypt

object PasswordHash : PasswordInterface {
    private val cost: Int = System.getenv("BCRYPT_COST")?.toIntOrNull() ?: 12
    override fun hash(passwd: String): String = try {
        validateStrength(passwd)
        val hashed = BCrypt.withDefaults().hashToString(cost, passwd.toCharArray())
        println("[HASH] Contraseña original: $passwd")
        println("[HASH] Hash generado: $hashed")
        hashed
    } catch (error: Exception) {
        throw IllegalArgumentException("Error hashing password: ${error.message}", error)
    }

    override fun verify(passwd: String, hashedPassword: String): Boolean = try {
        println("[VERIFY] Contraseña a verificar: $passwd")
        println("[VERIFY] Hash almacenado: $hashedPassword")
        val result = BCrypt.verifyer().verify(passwd.toCharArray(), hashedPassword).verified
        println("[VERIFY] Resultado verificación: $result")
        result
    } catch (error: Exception) {
        throw IllegalArgumentException("Error verifying password: ${error.message}", error)
    }

    private fun validateStrength(passwd: String) {
        if (passwd.length < 8) {
            throw IllegalArgumentException("Password length must be at least 8 characters long")
        }
    }
}