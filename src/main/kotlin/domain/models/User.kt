package domain.models

import domain.utils.serializers.UUIDSerializer
import kotlinx.serialization.Serializable
import java.util.*

@Serializable
data class User(
    @Serializable(with = UUIDSerializer::class)
    var id: UUID = UUID.randomUUID(),
    var fullName: String,
    var username: String,
    var password: String,
    var email: String,
    var avatar: String? = null
)