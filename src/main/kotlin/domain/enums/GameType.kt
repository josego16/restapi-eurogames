package domain.enums

import kotlinx.serialization.Serializable

@Serializable
enum class GameType { Guess_the_flag, Quiz, Unknown }