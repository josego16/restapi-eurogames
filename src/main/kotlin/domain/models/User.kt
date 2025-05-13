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
    var fullName: String, //nombre
    var username: String, //nombre de usuario
    var password: String, //contraseña
    var email: String, //correo electronico
    var avatar: String? = null //foto de perfil
)