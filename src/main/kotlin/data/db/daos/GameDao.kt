package data.db.daos

import data.db.tables.GameTable
import domain.models.Game
import org.jetbrains.exposed.dao.IntEntity
import org.jetbrains.exposed.dao.IntEntityClass
import org.jetbrains.exposed.dao.id.EntityID

/**
 * DAO para la entidad Game.
 * Permite el acceso y manipulación de juegos en la base de datos.
 * @property name Nombre del juego.
 * @property description Descripción del juego.
 * @property gameType Tipo de juego.
 * @property imageUrl URL de la imagen del juego.
 */
class GameDao(id: EntityID<Int>) : IntEntity(id) {
    companion object : IntEntityClass<GameDao>(GameTable)

    var name by GameTable.name
    var description by GameTable.description
    var gameType by GameTable.gameType
    var imageUrl by GameTable.imageUrl

    /**
     * Convierte el DAO a un modelo de dominio [Game].
     * @return [Game] con los datos del juego.
     */
    fun toDomain() = Game(
        id.value,
        name,
        gameType,
        imageUrl ?: "",
        description,
    )
}