package domain.interfaces

import domain.enums.Difficulty
import domain.enums.QuestionType
import domain.models.Question
import domain.models.QuestionWithAnswer

/**
 * Repositorio para gestionar preguntas.
 */
interface QuestionRepository {

    /**
     * Obtiene todas las preguntas.
     */
    suspend fun getAll(): List<Question>

    /**
     * Obtiene una pregunta por su ID.
     *
     * @param id ID de la pregunta.
     * @return La pregunta correspondiente o null.
     */
    suspend fun getById(id: Int): Question?

    /**
     * Obtiene todas las preguntas junto con sus respuestas.
     */
    suspend fun getAllQuestionWithAnswers(): List<QuestionWithAnswer>

    /**
     * Obtiene una pregunta con respuestas por ID.
     *
     * @param id ID de la pregunta.
     * @return Objeto combinado o null.
     */
    suspend fun getQuestionWithAnswersById(id: Int): QuestionWithAnswer?

    /**
     * Obtiene preguntas filtradas por dificultad y categoría.
     *
     * @param difficulty Nivel de dificultad (opcional).
     * @param category Tipo de pregunta (opcional).
     * @return Lista de preguntas con respuestas.
     */
    suspend fun getQuestionsWithAnswersByDifficulty(
        difficulty: Difficulty?,
        category: QuestionType?
    ): List<QuestionWithAnswer>
}