package domain.utils.jsontosql

/**
 * Example usage of JsonToSqlConverter to convert JSON data to SQL INSERT statements.
 * This file demonstrates how to use the converter with both specialized and generic approaches.
 */
fun main() {
    println("Starting JSON to SQL conversion...")

    // Example 1: Convert country JSON to SQL using the specialized function
    JsonToSqlConverter.convertCountryJsonToSql(
        jsonFilePath = "db/europe.json",
        outputFilePath = "db/generated_countries.sql"
    )

    // Ejemplo actualizado para coincidir con la data class Country
    val countryMappings = mapOf(
        "name.common" to "name_common",
        "name.official" to "name_official",
        "capital[]" to "capital",
        "region" to "region",
        "subregion" to "subregion",
        "population" to "population",
        "timezones[]" to "timezones",
        "continents[]" to "continents",
        "flags.png" to "flag_url",
        "flags.alt" to "flag_description",
        "coatOfArms" to "shield_url",
        "startOfWeek" to "start_of_week"
    )

    JsonToSqlConverter.convertJsonToSql(
        jsonFilePath = "db/europe.json",
        outputFilePath = "db/generated_custom_countries.sql",
        tableName = "country",
        columnMappings = countryMappings
    )

    // Example 3: How to use for other JSON data (commented out as example only)
    /*
    val questionMappings = mapOf(
        "question" to "text",
        "category" to "category",
        "difficulty" to "difficulty",
        "correct_answer" to "correct_answer"
    )

    JsonToSqlConverter.convertJsonToSql(
        jsonFilePath = "db/quiz/questions.json",
        outputFilePath = "db/generated_questions.sql",
        tableName = "question",
        columnMappings = questionMappings
    )
    */

    println("JSON to SQL conversion completed successfully!")
    println("Generated SQL files can be found in the db directory.")
    println("You can now use these SQL files to populate your database tables.")
}
