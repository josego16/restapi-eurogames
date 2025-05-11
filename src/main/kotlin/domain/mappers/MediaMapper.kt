package domain.mappers

import domain.dto.MediaCreateDto
import domain.dto.MediaResponseDto
import domain.models.Media

fun MediaCreateDto.toModel(): Media = Media(
    countryId = countryId,
    title = title,
    type = type,
    img = img
)

fun Media.toResponseDto(): MediaResponseDto = MediaResponseDto(
    id = id,
    countryId = countryId,
    title = title,
    type = type,
    img = img
)