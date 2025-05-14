package domain.utils

import domain.dto.ActionDto
import domain.enums.Difficulty
import domain.enums.GameType

object ScoreUtils {
    fun calculateScore(actions: List<ActionDto>, difficulty: Difficulty, gameType: GameType): Double {
        val multiplier = when (difficulty) {
            Difficulty.EASY -> 1.0
            Difficulty.MEDIUM -> 1.5
            Difficulty.HARD -> 2.0
        }

        return when (gameType) {
            GameType.QUIZ -> {
                val correctAnswers = actions.count { it.actionType == "ANSWER" && it.value == "CORRECT" }
                correctAnswers * 10 * multiplier
            }

            GameType.GUESS_FLAG -> {
                val correctGuesses = actions.count { it.actionType == "GUESS" && it.value == "CORRECT" }
                correctGuesses * 15 * multiplier
            }

            else -> 0.0
        }
    }
}