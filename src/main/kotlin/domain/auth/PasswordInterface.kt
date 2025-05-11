package domain.auth

interface PasswordInterface{
    fun hash(passwd: String): String
    fun verify(passwd: String, hashedPassword: String): Boolean
}