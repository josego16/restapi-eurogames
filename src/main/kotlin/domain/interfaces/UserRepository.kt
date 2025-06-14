package domain.interfaces

import domain.models.User

/**
 * Repositorio de acceso a datos para la entidad [User].
 * Define las operaciones CRUD y de consulta necesarias para interactuar con la base de datos.
 */
interface UserRepository {

    /**
     * Obtiene la lista completa de usuarios registrados.
     *
     * @return una lista de objetos [User].
     */
    suspend fun getAll(): List<User>

    /**
     * Busca un usuario por su identificador único.
     *
     * @param id el identificador del usuario a buscar.
     * @return el [User] correspondiente si existe, o `null` si no se encuentra.
     */
    suspend fun getById(id: Int): User?

    /**
     * Crea un nuevo usuario en la base de datos.
     *
     * @param user el objeto [User] a persistir.
     * @return el [User] creado con su ID asignado.
     */
    suspend fun create(user: User): User

    /**
     * Actualiza un usuario existente.
     *
     * @param id el identificador del usuario a actualizar.
     * @param user los nuevos datos del usuario.
     * @return el [User] actualizado si la operación fue exitosa, o `null` si no se encontró.
     */
    suspend fun update(id: Int, user: User): User?

    /**
     * Busca un usuario por su nombre de usuario.
     *
     * @param username el nombre de usuario a buscar.
     * @return el [User] correspondiente si existe, o `null` si no se encuentra.
     */
    suspend fun findByUsername(username: String): User?
}