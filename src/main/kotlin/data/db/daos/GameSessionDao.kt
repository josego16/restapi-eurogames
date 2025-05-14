package data.db.daos

import data.db.tables.GameSessionTable
import domain.models.GameSession
import kotlinx.datetime.toJavaInstant
import kotlinx.datetime.toKotlinInstant
import org.jetbrains.exposed.dao.UUIDEntity
import org.jetbrains.exposed.dao.UUIDEntityClass
import org.jetbrains.exposed.dao.id.EntityID
import java.util.*

class GameSessionDao(id: EntityID<UUID>) : UUIDEntity(id) {
    companion object : UUIDEntityClass<GameSessionDao>(GameSessionTable) {
        fun fromDomain(domain: GameSession, existing: GameSessionDao? = null): GameSessionDao {
            return existing ?: new(domain.id) {
                userId = UserDao[domain.userId]
                gameId = GameDao[domain.gameId]
                scoreSession = domain.scoreSession
                gameType = domain.gameType
                difficulty = domain.difficulty
                status = domain.status
                startedAt = domain.startedAt.toJavaInstant()
                finishedAt = domain.finishedAt?.toJavaInstant()
            }
        }
    }

    var userId by UserDao.Companion referencedOn GameSessionTable.userId
    var gameId by GameDao.Companion referencedOn GameSessionTable.gameId
    var scoreSession by GameSessionTable.scoreSession
    var gameType by GameSessionTable.gameType
    var difficulty by GameSessionTable.difficulty
    var status by GameSessionTable.status
    var startedAt by GameSessionTable.startedAt
    var finishedAt by GameSessionTable.finishedAt

    fun toDomain() = GameSession(
        id.value,
        userId.id.value,
        gameId.id.value,
        scoreSession,
        difficulty,
        gameType,
        status,
        startedAt.toKotlinInstant(),
        finishedAt?.toKotlinInstant(),
    )
}