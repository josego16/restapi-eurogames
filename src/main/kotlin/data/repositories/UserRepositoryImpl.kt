package data.repositories

import data.db.daos.UserDao
import data.db.suspendedTransaction
import data.db.tables.UserTable
import domain.auth.PasswordHash
import domain.interfaces.UserInterface
import domain.models.User
import org.slf4j.Logger
import org.slf4j.LoggerFactory
import java.util.*

class UserRepositoryImpl : UserInterface {
    private val logger: Logger = LoggerFactory.getLogger(UserRepositoryImpl::class.java)

    override suspend fun getAll(): List<User> = runCatching {
        suspendedTransaction {
            UserDao.all().map { it.toDomain() }
        }
    }.onFailure {
        logger.error("Error al obtener todos los usuarios", it)
    }.getOrDefault(emptyList())

    override suspend fun getById(id: UUID): User? = runCatching {
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
            UserDao.new {
                fullName = user.fullName
                username = user.username
                password = user.password
                email = user.email
                avatar = user.avatar ?: ""
            }.toDomain()
        }
    }.onFailure {
        logger.error("Error al registrar usuario", it)
    }.getOrDefault(user)

    override suspend fun update(id: UUID, user: User): User? = runCatching {
        suspendedTransaction {
            val dao = UserDao.findById(id) ?: return@suspendedTransaction null

            dao.apply {
                username = user.username
                if (user.password.isNotBlank() && user.password != dao.password) {
                    password = PasswordHash.hash(user.password)
                }
                fullName = user.fullName
                email = user.email
                avatar = user.avatar ?: ""
            }.toDomain()
        }
    }.onFailure {
        logger.error("Error al actualizar usuario con ID $id", it)
    }.getOrNull()
}
