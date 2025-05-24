package domain.models

import kotlinx.serialization.Serializable

@Serializable
data class User(
    var id: Int = 0,
    var fullName: String,
    var username: String,
    var email: String,
    var password: String,
    var avatar: String? = null
)