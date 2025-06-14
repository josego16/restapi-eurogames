package data.db.daos

import data.db.tables.AnswerTable
import domain.models.Answer
import org.jetbrains.exposed.dao.IntEntity
import org.jetbrains.exposed.dao.IntEntityClass
import org.jetbrains.exposed.dao.id.EntityID

/**
 * DAO para la entidad Answer.
 * Permite el acceso y manipulación de respuestas en la base de datos.
 * @property questionId Referencia a la pregunta asociada.
 * @property text Texto de la respuesta.
 * @property isCorrect Indica si la respuesta es correcta.
 */
class AnswerDao(id: EntityID<Int>) : IntEntity(id) {
    companion object : IntEntityClass<AnswerDao>(AnswerTable)

    var questionId by QuestionDao.Companion referencedOn AnswerTable.questionId
    var text by AnswerTable.text
    var isCorrect by AnswerTable.isCorrect

    /**
     * Convierte el DAO a un modelo de dominio [Answer].
     * @return [Answer] con los datos de la respuesta.
     */
    fun toDomain() = Answer(id.value, questionId.id.value, text, isCorrect)
}