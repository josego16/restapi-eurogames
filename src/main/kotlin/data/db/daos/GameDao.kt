package data.db.daos

import data.db.tables.GameTable
import domain.models.Game
import org.jetbrains.exposed.dao.UUIDEntity
import org.jetbrains.exposed.dao.UUIDEntityClass
import org.jetbrains.exposed.dao.id.EntityID
import java.util.*

class GameDao(id: EntityID<UUID>) : UUIDEntity(id) {
    companion object : UUIDEntityClass<GameDao>(GameTable)

    var name by GameTable.name
    var description by GameTable.description
    var gameType by GameTable.gameType
    var difficulty by GameTable.difficulty
    var imageUrl by GameTable.imageUrl

    fun toDomain() = Game(
        id.value,
        name,
        gameType,
        difficulty,
        imageUrl ?: "",
        description,
    )
}