package domain.enums

import kotlinx.serialization.Serializable

@Serializable
enum class MediaType {
    MONUMENT,
    LANDSCAPE,
    MUSEUM,
    HISTORICAL_BUILDING,
    PLAZA,
    CASTLE,
    CATHEDRAL,
    PARK,
    OTHER
}