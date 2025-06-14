package domain.dto

import domain.models.Country
import kotlinx.serialization.Serializable

/**
 * DTO genérico para respuestas paginadas.
 *
 * @param T Tipo de los elementos contenidos en la respuesta.
 * @property info Información de la paginación.
 * @property items Lista de elementos de la página actual.
 */
@Serializable
data class PaginatedResponseDto<T>(
    val info: PaginationInfoDto,
    val items: List<T>,
)

/**
 * DTO que representa el resultado de una página de países.
 *
 * @property countries Lista de países en la página.
 * @property totalItems Número total de países disponibles.
 */
@Serializable
data class CountryPageResult(
    val countries: List<Country>,
    val totalItems: Int
)

/**
 * DTO con la información de la paginación.
 *
 * @property count Número de elementos en la página actual.
 * @property pages Número total de páginas.
 * @property next URL de la siguiente página, si existe.
 * @property prev URL de la página anterior, si existe.
 */
@Serializable
data class PaginationInfoDto(
    val count: Int,
    val pages: Int,
    val next: String?,
    val prev: String?
)