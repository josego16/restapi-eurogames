package data.repositories

import data.db.daos.AnswerDao
import data.db.daos.QuestionDao
import data.db.suspendedTransaction
import data.db.tables.AnswerTable
import data.db.tables.QuestionTable
import domain.enums.Difficulty
import domain.enums.QuestionType
import domain.interfaces.QuestionRepository
import domain.models.Question
import domain.models.QuestionWithAnswer
import org.jetbrains.exposed.sql.and
import org.slf4j.Logger
import org.slf4j.LoggerFactory

class QuestionRepositoryImpl : QuestionRepository {
    private val logger: Logger = LoggerFactory.getLogger(QuestionRepositoryImpl::class.java)

    /**
     * Obtiene todas las preguntas.
     * @return Lista de preguntas o lista vacía si ocurre un error.
     */
    override suspend fun getAll(): List<Question> = runCatching {
        suspendedTransaction {
            QuestionDao.all().map { it.toDomain() }
        }
    }.onFailure {
        logger.error("Error al obtener todas las respuestas", it)
    }.getOrDefault(emptyList())

    /**
     * Obtiene una pregunta por su ID.
     * @param id Identificador de la pregunta.
     * @return Pregunta encontrada o null si no existe o hay error.
     */
    override suspend fun getById(id: Int): Question? = runCatching {
        suspendedTransaction {
            QuestionDao.findById(id)?.toDomain()
        }
    }.onFailure {
        logger.error("Error al obtener respuesta con ID $id", it)
    }.getOrNull()

    /**
     * Obtiene todas las preguntas junto con sus respuestas.
     * @return Lista de preguntas con respuestas o vacía si ocurre un error.
     */
    override suspend fun getAllQuestionWithAnswers(): List<QuestionWithAnswer> = runCatching {
        suspendedTransaction {
            QuestionDao.all().map { questionDao ->
                val question = questionDao.toDomain()
                val answers = AnswerDao.find { AnswerTable.questionId eq question.id }.map { it.toDomain() }
                QuestionWithAnswer(question, answers)
            }
        }
    }.onFailure {
        logger.error("Error al obtener todas las preguntas con respuestas", it)
    }.getOrDefault(emptyList())

    /**
     * Obtiene una pregunta con sus respuestas por ID.
     * @param id Identificador de la pregunta.
     * @return Pregunta con respuestas o null si no existe o hay error.
     */
    override suspend fun getQuestionWithAnswersById(id: Int): QuestionWithAnswer? = runCatching {
        suspendedTransaction {
            QuestionDao.findById(id)?.toDomain()?.let { question ->
                val answers = AnswerDao.find { AnswerTable.questionId eq question.id }.map { it.toDomain() }
                QuestionWithAnswer(question, answers)
            }
        }
    }.onFailure {
        logger.error("Error al obtener pregunta con respuestas por ID $id", it)
    }.getOrNull()

    /**
     * Obtiene preguntas con respuestas filtradas por dificultad y/o categoría.
     * @param difficulty Dificultad de la pregunta (opcional).
     * @param category Categoría o tipo de pregunta (opcional).
     * @return Lista de preguntas con respuestas filtradas o vacía si ocurre un error.
     */
    override suspend fun getQuestionsWithAnswersByDifficulty(
        difficulty: Difficulty?,
        category: QuestionType?
    ): List<QuestionWithAnswer> = runCatching {
        suspendedTransaction {
            val query = when {
                difficulty != null && category != null -> {
                    QuestionDao.find {
                        (QuestionTable.difficulty eq difficulty) and (QuestionTable.questionType eq category)
                    }
                }

                difficulty != null -> {
                    QuestionDao.find { QuestionTable.difficulty eq difficulty }
                }

                category != null -> {
                    QuestionDao.find { QuestionTable.questionType eq category }
                }

                else -> {
                    QuestionDao.all()
                }
            }
            query.map { questionDao ->
                val question = questionDao.toDomain()
                val answers = AnswerDao.find { AnswerTable.questionId eq question.id }.map { it.toDomain() }
                QuestionWithAnswer(question, answers)
            }
        }
    }.onFailure {
        logger.error(
            "Error al obtener preguntas con respuestas por dificultad $difficulty y categoría $category",
            it
        )
    }.getOrDefault(emptyList())
}