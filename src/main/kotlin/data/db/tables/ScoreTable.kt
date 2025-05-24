package data.db.tables

import domain.enums.Difficulty
import domain.enums.GameType
import org.jetbrains.exposed.dao.id.IntIdTable

object ScoreTable : IntIdTable("score") {
    val userId = reference("user_id", UserTable)
    val gameId = reference("game_id", GameTable)
    val scoreValue = double("score_value")
    val gameType = enumerationByName("game_type", 50, GameType::class)
    val difficulty = enumerationByName("difficulty", 50, Difficulty::class)
}