package domain.mappers

import domain.dto.LanguageResponseDto
import domain.models.Language

fun Language.toResponseDto(): LanguageResponseDto = LanguageResponseDto(
    id = id,
    name = name,
    code = code
)

fun LanguageResponseDto.toModel(): Language = Language(
    id = id,
    name = name,
    code = code
)