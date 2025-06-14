package data.db.tables

import domain.enums.GameType
import org.jetbrains.exposed.dao.id.IntIdTable

/**
 * Tabla de juegos en la base de datos.
 * Almacena información sobre los diferentes juegos disponibles.
 */
object GameTable : IntIdTable("game") {
    /** Nombre del juego. */
    val name = varchar("name", 255)

    /** Tipo de juego. */
    val gameType = enumerationByName("game_type", 50, GameType::class)

    /** URL de la imagen del juego. */
    val imageUrl = varchar("image_url", 512).nullable()

    /** Descripción del juego. */
    val description = text("description")
}