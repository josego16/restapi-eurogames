package data.db.daos

import data.db.tables.ScoreTable
import domain.models.Score
import org.jetbrains.exposed.dao.IntEntity
import org.jetbrains.exposed.dao.IntEntityClass
import org.jetbrains.exposed.dao.id.EntityID

class ScoreDao(id: EntityID<Int>) : IntEntity(id) {
    companion object : IntEntityClass<ScoreDao>(ScoreTable) {
        fun fromDomain(domain: Score, existing: ScoreDao? = null): ScoreDao {
            return existing ?: new(domain.id) {
                userId = UserDao.Companion[domain.userId]
                gameId = GameDao.Companion[domain.gameId]
                scoreValue = domain.scoreValue
                gameType = domain.gameType
                difficulty = domain.difficulty
                correctAnswers = domain.correctAnswers
                wrongAnswers = domain.wrongAnswers
                totalQuestions = domain.totalQuestions
            }
        }
    }

    var userId by UserDao.Companion referencedOn ScoreTable.userId
    var gameId by GameDao.Companion referencedOn ScoreTable.gameId
    var gameType by ScoreTable.gameType
    var difficulty by ScoreTable.difficulty
    var scoreValue by ScoreTable.scoreValue
    var correctAnswers by ScoreTable.correctAnswers
    var wrongAnswers by ScoreTable.wrongAnswers
    var totalQuestions by ScoreTable.totalQuestions

    fun toDomain() = Score(
        id.value,
        userId.id.value,
        gameId.id.value,
        scoreValue,
        gameType,
        difficulty,
        correctAnswers,
        wrongAnswers,
        totalQuestions
    )
}