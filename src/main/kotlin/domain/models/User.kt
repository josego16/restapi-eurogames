package domain.models

import domain.utils.serializers.UUIDSerializer
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class User(
    // Identificador
    @Serializable(with = UUIDSerializer::class)
    var id: UUID = UUID.randomUUID(),

    // Datos
    var name: String, //nombre
    var username: String, //nombre de usuario
    var email: String, //correo electronico
    var password: String, //contraseña
    var avatar: String? = null //foto de perfil
)