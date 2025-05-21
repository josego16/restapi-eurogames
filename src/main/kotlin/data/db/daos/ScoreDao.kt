package data.db.daos

import data.db.tables.ScoreTable
import domain.models.Score
import org.jetbrains.exposed.dao.UUIDEntity
import org.jetbrains.exposed.dao.UUIDEntityClass
import org.jetbrains.exposed.dao.id.EntityID
import java.util.*

class ScoreDao(id: EntityID<UUID>) : UUIDEntity(id) {
    companion object : UUIDEntityClass<ScoreDao>(ScoreTable) {
        fun fromDomain(domain: Score, existing: ScoreDao? = null): ScoreDao {
            return existing ?: new(domain.id) {
                userId = UserDao.Companion[domain.userId]
                gameId = GameDao.Companion[domain.gameId]
                scoreValue = domain.scoreValue
                gameType = domain.gameType
                difficulty = domain.difficulty
            }
        }
    }

    var userId by UserDao.Companion referencedOn ScoreTable.userId
    var gameId by GameDao.Companion referencedOn ScoreTable.gameId
    var gameType by ScoreTable.gameType
    var difficulty by ScoreTable.difficulty
    var scoreValue by ScoreTable.scoreValue

    fun toDomain() = Score(
        id.value,
        userId.id.value,
        gameId.id.value,
        scoreValue,
        gameType,
        difficulty,
    )
}