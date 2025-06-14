package data.db.daos

import data.db.tables.ScoreTable
import domain.models.Score
import org.jetbrains.exposed.dao.IntEntity
import org.jetbrains.exposed.dao.IntEntityClass
import org.jetbrains.exposed.dao.id.EntityID

/**
 * DAO para la entidad Score.
 * Permite el acceso y manipulación de puntuaciones en la base de datos.
 * @property userId Referencia al usuario que obtuvo la puntuación.
 * @property gameId Referencia al juego asociado.
 * @property gameType Tipo de juego.
 * @property difficulty Dificultad del juego.
 * @property scoreValue Valor de la puntuación obtenida.
 * @property correctAnswers Número de respuestas correctas.
 * @property wrongAnswers Número de respuestas incorrectas.
 * @property totalQuestions Número total de preguntas.
 */
class ScoreDao(id: EntityID<Int>) : IntEntity(id) {
    companion object : IntEntityClass<ScoreDao>(ScoreTable) {
        /**
         * Crea o actualiza un DAO a partir de un modelo de dominio [Score].
         * @param domain Modelo de dominio [Score].
         * @param existing Instancia existente de [ScoreDao] (opcional).
         * @return [ScoreDao] creado o actualizado.
         */
        fun fromDomain(domain: Score, existing: ScoreDao? = null): ScoreDao {
            fun ScoreDao.assignFromDomain(domain: Score) {
                userId = UserDao.Companion[domain.userId]
                gameId = GameDao.Companion[domain.gameId]
                scoreValue = domain.scoreValue
                gameType = domain.gameType
                difficulty = domain.difficulty
                correctAnswers = domain.correctAnswers
                wrongAnswers = domain.wrongAnswers
                totalQuestions = domain.totalQuestions
            }
            return existing ?: if (domain.id == 0) {
                new {
                    assignFromDomain(domain)
                }
            } else {
                new(domain.id) {
                    assignFromDomain(domain)
                }
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

    /**
     * Convierte el DAO a un modelo de dominio [Score].
     * @return [Score] con los datos de la puntuación.
     */
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