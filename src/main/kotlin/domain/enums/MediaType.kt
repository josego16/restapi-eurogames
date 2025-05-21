package domain.enums

import kotlinx.serialization.Serializable

@Serializable
enum class MediaType {
    FLAG,
    COAT,
    MONUMENT,
    SCULPTURE,
    PAINTING,
    LANDSCAPE,
    FOOD,
    ARCHITECTURE,
    SPORTS,
    FESTIVAL
}