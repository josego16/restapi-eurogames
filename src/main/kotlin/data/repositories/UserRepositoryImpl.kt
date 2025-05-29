package data.repositories

import data.db.daos.UserDao
import data.db.suspendedTransaction
import data.db.tables.UserTable
import domain.auth.PasswordHash
import domain.interfaces.UserInterface
import domain.models.User
import org.slf4j.Logger
import org.slf4j.LoggerFactory

class UserRepositoryImpl : UserInterface {
    private val logger: Logger = LoggerFactory.getLogger(UserRepositoryImpl::class.java)

    override suspend fun getAll(): List<User> = runCatching {
        suspendedTransaction {
            UserDao.all().map { it.toDomain() }
        }
    }.onFailure {
        logger.error("Error al obtener todos los usuarios", it)
    }.getOrDefault(emptyList())

    override suspend fun getById(id: Int): User? = runCatching {
        suspendedTransaction {
            UserDao.findById(id)?.toDomain()
        }
    }.onFailure {
        logger.error("Error al obtener usuario con ID $id", it)
    }.getOrNull()

    override suspend fun findByUsername(username: String): User? = runCatching {
        suspendedTransaction {
            UserDao.find {
                UserTable.username eq username
            }.limit(1).firstOrNull()?.toDomain()
        }
    }.onFailure {
        logger.error("Error al buscar usuario con nombre de usuario $username", it)
    }.getOrNull()

    override suspend fun create(user: User): User = runCatching {
        suspendedTransaction {
            UserDao.fromDomain(user).toDomain()
        }
    }.onFailure {
        logger.error("Error al registrar usuario", it)
    }.getOrDefault(user)

    override suspend fun update(id: Int, user: User): User? = runCatching {
        suspendedTransaction {
            val existing = UserDao.findById(id) ?: return@suspendedTransaction null

            // Solo hasheamos si cambió y no viene hasheada
            val newPassword = if (
                user.password.isNotBlank() &&
                user.password != existing.password
            ) PasswordHash.hash(user.password) else existing.password

            val updatedUser = user.copy(password = newPassword)
            UserDao.fromDomain(updatedUser, existing).toDomain()
        }
    }.onFailure {
        logger.error("Error al actualizar usuario con ID $id", it)
    }.getOrNull()
}