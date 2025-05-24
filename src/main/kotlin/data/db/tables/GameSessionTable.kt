package data.db.tables

import domain.enums.Difficulty
import domain.enums.GameType
import domain.enums.SessionStatus
import org.jetbrains.exposed.dao.id.IntIdTable
import org.jetbrains.exposed.sql.javatime.timestamp

object GameSessionTable : IntIdTable("game_session") {
    val userId = reference("user_id", UserTable)
    val gameId = reference("game_id", GameTable)
    val scoreSession = double("score_session").default(0.0)
    val gameType = enumerationByName("game_type", 50, GameType::class)
    val difficulty = enumerationByName("difficulty", 50, Difficulty::class)
    val status = enumerationByName("status", 20, SessionStatus::class).default(SessionStatus.IN_PROGRESS)
    val startedAt = timestamp("started_at")
    val finishedAt = timestamp("finished_at").nullable()
}