package domain.enums

import kotlinx.serialization.Serializable

@Serializable
enum class ResponseMode {
    True_or_false,
    Multiple_Choice,
    Free_Text
}