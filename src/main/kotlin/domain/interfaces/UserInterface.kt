package domain.interfaces

import domain.models.User
import java.util.*

interface UserInterface {
    suspend fun getAll(): List<User>
    suspend fun getById(id: UUID): User?
    suspend fun create(user: User): User
    suspend fun update(id: UUID, user: User): User?
    suspend fun findByUsername(username: String): User?
    suspend fun updateToken(id: UUID, token: String)
}