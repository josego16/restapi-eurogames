package data.db.daos

import data.db.tables.GameSessionTable
import domain.models.GameSession
import kotlinx.datetime.toJavaInstant
import kotlinx.datetime.toKotlinInstant
import org.jetbrains.exposed.dao.IntEntity
import org.jetbrains.exposed.dao.IntEntityClass
import org.jetbrains.exposed.dao.id.EntityID

class GameSessionDao(id: EntityID<Int>) : IntEntity(id) {
    companion object : IntEntityClass<GameSessionDao>(GameSessionTable) {
        fun fromDomain(domain: GameSession, existing: GameSessionDao? = null): GameSessionDao {
            val dao = existing ?: new {
                userId = UserDao[domain.userId]
                gameId = GameDao[domain.gameId]
                scoreSession = domain.scoreSession
                gameType = domain.gameType
                difficulty = domain.difficulty
                status = domain.status
                startedAt = domain.startedAt.toJavaInstant()
                finishedAt = domain.finishedAt?.toJavaInstant()
            }

            if (existing != null) {
                dao.userId = UserDao[domain.userId]
                dao.gameId = GameDao[domain.gameId]
                dao.scoreSession = domain.scoreSession
                dao.gameType = domain.gameType
                dao.difficulty = domain.difficulty
                dao.status = domain.status
                dao.startedAt = domain.startedAt.toJavaInstant()
                dao.finishedAt = domain.finishedAt?.toJavaInstant()
            }

            return dao
        }
    }

    var userId by UserDao referencedOn GameSessionTable.userId
    var gameId by GameDao referencedOn GameSessionTable.gameId
    var scoreSession by GameSessionTable.scoreSession
    var gameType by GameSessionTable.gameType
    var difficulty by GameSessionTable.difficulty
    var status by GameSessionTable.status
    var startedAt by GameSessionTable.startedAt
    var finishedAt by GameSessionTable.finishedAt

    fun toDomain(): GameSession = GameSession(
        id.value,
        userId.id.value,
        gameId.id.value,
        scoreSession,
        difficulty,
        gameType,
        status,
        startedAt.toKotlinInstant(),
        finishedAt?.toKotlinInstant()
    )
}