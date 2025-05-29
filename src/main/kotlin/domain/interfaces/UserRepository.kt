package domain.interfaces

import domain.models.User

interface UserRepository {
    suspend fun getAll(): List<User>
    suspend fun getById(id: Int): User?
    suspend fun create(user: User): User
    suspend fun update(id: Int, user: User): User?
    suspend fun findByUsername(username: String): User?
}