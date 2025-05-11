package data.db.daos

import data.db.tables.GameSessionTable
import domain.models.GameSession
import org.jetbrains.exposed.dao.UUIDEntity
import org.jetbrains.exposed.dao.UUIDEntityClass
import org.jetbrains.exposed.dao.id.EntityID
import java.util.*

class GameSessionDao(id: EntityID<UUID>) : UUIDEntity(id) {
    companion object : UUIDEntityClass<GameSessionDao>(GameSessionTable) {
        fun fromDomain(domain: GameSession, existing: GameSessionDao? = null): GameSessionDao {
            return existing ?: new(domain.id) {
                userId = UserDao.Companion[domain.userId]
                scoreSession = domain.scoreSession
                gameType = domain.gameType
                difficulty = domain.difficulty
            }
        }
    }

    var userId by UserDao.Companion referencedOn GameSessionTable.userId
    var scoreSession by GameSessionTable.scoreSession
    var gameType by GameSessionTable.gameType
    var difficulty by GameSessionTable.difficulty

    fun toDomain() = GameSession(
        id.value,
        userId.id.value,
        scoreSession,
        difficulty,
        gameType
    )
}
