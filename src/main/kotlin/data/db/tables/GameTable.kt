package data.db.tables

import domain.enums.Difficulty
import domain.enums.GameType
import org.jetbrains.exposed.dao.id.IntIdTable

object GameTable : IntIdTable("game") {
    val name = varchar("name", 255)
    val gameType = enumerationByName("game_type", 50, GameType::class)
    val difficulty = enumerationByName("difficulty", 50, Difficulty::class)
    val imageUrl = varchar("image_url", 512).nullable()
    val description = text("description")
}