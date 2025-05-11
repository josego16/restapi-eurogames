package domain.auth

import at.favre.lib.crypto.bcrypt.BCrypt

object PasswordHash : PasswordInterface {
    private val cost: Int = System.getenv("BCRYPT_COST")?.toIntOrNull() ?: 12
    override fun hash(passwd: String): String = try {
        validateStrength(passwd)
        BCrypt.withDefaults().hashToString(cost, passwd.toCharArray())
    } catch (error: Exception) {
        throw ExceptionHash("Error while hashing: $error")
    }

    override fun verify(passwd: String, hashedPassword: String): Boolean = try {
        BCrypt.verifyer().verify(passwd.toCharArray(), hashedPassword).verified
    } catch (error: Exception) {
        throw ExceptionHash("Error while verifying: $error")
    }

    private fun validateStrength(passwd: String) {
        if (passwd.length < 8) {
            throw IllegalArgumentException("Password length must be at least 8 characters long")
        }
    }
}