package data.db.tables

import domain.enums.Difficulty
import domain.enums.GameType
import org.jetbrains.exposed.dao.id.UUIDTable

object GameSessionTable : UUIDTable("game_session") {
    val userId = reference("user_id", UserTable)
    val scoreSession = double("score_session")
    val gameType = enumerationByName("game_type", 50, GameType::class)
    val difficulty = enumerationByName("difficulty", 50, Difficulty::class)
}
