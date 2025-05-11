package data.db.tables

import org.jetbrains.exposed.sql.ReferenceOption
import org.jetbrains.exposed.sql.Table

object CountryLangTable : Table("country_lang") {
    val country = reference("country_id", CountryTable, onDelete = ReferenceOption.CASCADE)
    val language = reference("lang_id", LanguageTable, onDelete = ReferenceOption.CASCADE)

    override val primaryKey = PrimaryKey(country, language)
}