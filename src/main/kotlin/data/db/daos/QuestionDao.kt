package data.db.daos

import data.db.tables.QuestionTable
import domain.models.Question
import org.jetbrains.exposed.dao.IntEntity
import org.jetbrains.exposed.dao.IntEntityClass
import org.jetbrains.exposed.dao.id.EntityID

/**
 * DAO para la entidad Question.
 * Permite el acceso y manipulación de preguntas en la base de datos.
 * @property statement Enunciado de la pregunta.
 * @property questionType Tipo de pregunta.
 * @property difficulty Dificultad de la pregunta.
 * @property flagUrl URL de la bandera asociada.
 * @property coatUrl URL del escudo asociado.
 * @property responseMode Modo de respuesta de la pregunta.
 */
class QuestionDao(id: EntityID<Int>) : IntEntity(id) {
    companion object : IntEntityClass<QuestionDao>(QuestionTable)

    var statement by QuestionTable.statement
    var questionType by QuestionTable.questionType
    var difficulty by QuestionTable.difficulty
    var flagUrl by QuestionTable.flagUrl
    var coatUrl by QuestionTable.coatUrl
    var responseMode by QuestionTable.responseMode

    /**
     * Convierte el DAO a un modelo de dominio [Question].
     * @return [Question] con los datos de la pregunta.
     */
    fun toDomain() = Question(
        id.value,
        statement,
        questionType,
        responseMode,
        difficulty,
        flagUrl,
        coatUrl
    )
}