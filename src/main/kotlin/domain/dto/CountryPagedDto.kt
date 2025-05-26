package domain.dto

import domain.models.Country
import kotlinx.serialization.Serializable

@Serializable
data class PaginatedResponseDto<T>(
    val info: PaginationInfoDto,
    val items: List<T>,
)

@Serializable
data class CountryPageResult(
    val countries: List<Country>,
    val totalItems: Int
)

@Serializable
data class PaginationInfoDto(
    val count: Int,
    val pages: Int,
    val next: String?,
    val prev: String?
)