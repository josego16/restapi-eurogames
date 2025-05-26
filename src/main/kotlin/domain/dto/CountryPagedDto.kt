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
    val page: Int,
    val size: Int,
    val totalItems: Int,
    val totalPages: Int
)