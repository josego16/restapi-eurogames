package domain.enums

import kotlinx.serialization.Serializable

@Serializable
enum class ResponseMode { Verdadero_falso, Opcion_multiple, Texto_libre }