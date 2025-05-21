package domain.enums

import kotlinx.serialization.Serializable

@Serializable
enum class ResponseMode { TRUE_OR_FALSE, MULTIPLE_CHOICE, FREE_TEXT }