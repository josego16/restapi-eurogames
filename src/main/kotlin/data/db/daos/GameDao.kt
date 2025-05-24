package data.db.daos

import data.db.tables.GameTable
import domain.models.Game
import org.jetbrains.exposed.dao.IntEntity
import org.jetbrains.exposed.dao.IntEntityClass
import org.jetbrains.exposed.dao.id.EntityID

class GameDao(id: EntityID<Int>) : IntEntity(id) {
    companion object : IntEntityClass<GameDao>(GameTable)

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