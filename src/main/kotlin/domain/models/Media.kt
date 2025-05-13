package domain.models

import domain.enums.MediaType
import domain.utils.serializers.UUIDSerializer
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class Media(
    // Identificador
    @Serializable(with = UUIDSerializer::class)
    val id: UUID = UUID.randomUUID(),
    @Serializable(with = UUIDSerializer::class)
    val countryId: UUID, //id del pais

    // Datos
    val title: String, //titulo
    val mediaType: MediaType, //tipo de contenido
    val image: String? = null, //archivo o url
    val description: String?=null //descripcion
)