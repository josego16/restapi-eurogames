package domain.auth

/**
 * Interfaz para el hash y verificación de contraseñas.
 */
interface PasswordInterface{
    /**
     * Genera el hash de una contraseña.
     * @param passwd Contraseña en texto plano.
     * @return Hash seguro de la contraseña.
     */
    fun hash(passwd: String): String

    /**
     * Verifica si la contraseña coincide con el hash.
     * @param passwd Contraseña en texto plano.
     * @param hashedPassword Hash de la contraseña.
     * @return true si la contraseña es válida, false en caso contrario.
     */
    fun verify(passwd: String, hashedPassword: String): Boolean
}