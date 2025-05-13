package domain.models

import domain.enums.Difficulty
import domain.enums.QuestionType
import domain.enums.ResponseMode
import domain.utils.serializers.UUIDSerializer
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class Question(
    // Identificador
    @Serializable(with = UUIDSerializer::class)
    val id: UUID =UUID.randomUUID(),
    @Serializable(with = UUIDSerializer::class)
    val countryId: UUID, //id del pais

    // Datos
    val statement: String, //enunciado
    val questionType: QuestionType, //tipo de la pregunta
    val responseMode: ResponseMode, //modo de la respuesta
    val difficulty: Difficulty, //dificultad
    val imageUrl: String? = null //archivo o url de la imagen
)