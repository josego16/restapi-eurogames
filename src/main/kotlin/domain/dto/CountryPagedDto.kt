package domain.dto

import domain.models.Country
import kotlinx.serialization.Serializable

@Serializable
data class PaginatedResponseDto<T>(
    val items: List<T>,
    val page: Int,
    val size: Int,
    val totalItems: Int,
    val totalPages: Int
)

@Serializable
data class CountryPageResult(
    val countries: List<Country>,
    val totalCount: Int
)