package domain.mappers

import domain.dto.MediaCreateDto
import domain.dto.MediaResponseDto
import domain.dto.MediaUpdateDto
import domain.models.Media

fun MediaCreateDto.toModel(): Media = Media(
    countryId = countryId,
    title = title,
    mediaType = mediaType,
    image = image ?: "",
    description = description ?: ""
)

fun MediaUpdateDto.toModel(): Media = Media(
    countryId = countryId,
    title = title ?: "",
    mediaType = mediaType!!,
    image = image ?: "",
    description = description ?: ""
)

fun Media.toResponseDto(): MediaResponseDto = MediaResponseDto(
    id = id,
    countryId = countryId,
    title = title,
    mediaType = mediaType,
    image = image ?: "",
    description = description ?: ""
)