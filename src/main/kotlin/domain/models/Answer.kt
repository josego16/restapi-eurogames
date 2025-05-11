package domain.models

import domain.utils.serializers.UUIDSerializer
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class Answer(
    //Identificador
    @Serializable(with = UUIDSerializer::class)
    val id: UUID = UUID.randomUUID(),
    @Serializable(with = UUIDSerializer::class)
    val questionId: UUID, //id pregunta

    //Datos
    val text: String, //texto de cada respuesta
    val isCorrect: Boolean, //es correcta
)