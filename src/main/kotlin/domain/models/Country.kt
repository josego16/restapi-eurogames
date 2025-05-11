package domain.models

import domain.utils.serializers.UUIDSerializer
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class Country(
    //Identificador
    @Serializable(with = UUIDSerializer::class)
    val id: UUID = UUID.randomUUID(),

    //Datos
    val name: String, //nombre del pais
    val capital: String,
    val region: String,
    val subregion: String,
    val population: Long, //numero total de habitantes en el pais
    val flagUrl: String, //imagen de la bandera del pais
    val shieldUrl: String, //imagen del escudo del pais
    val description: String, //descripcion corta sobre el pais
)