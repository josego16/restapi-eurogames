package domain.interfaces

import domain.models.Language
import java.util.*

interface LanguageInterface{
    suspend fun getAll(): List<Language>
    suspend fun getById(id: UUID): Language?
}