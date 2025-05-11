package domain.interfaces

import domain.models.Media
import java.util.*

interface MediaInterface {
    suspend fun getAll(): List<Media>
    suspend fun getById(id: UUID): Media?
    suspend fun create(entity: Media): Media?
    suspend fun update(id: UUID, entity: Media): Media?
    suspend fun delete(id: UUID): Boolean
}