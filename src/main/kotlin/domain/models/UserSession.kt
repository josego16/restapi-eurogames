package domain.models

import kotlinx.serialization.Serializable

@Serializable
data class UserSession(val userId: Int, val username: String)