package domain.utils.jsontosql

import kotlinx.serialization.json.*
import java.io.File
import java.util.*

/**
 * Extension function to escape special characters in SQL strings.
 * This helps prevent SQL injection when generating SQL statements.
 */
private fun String.escapeSql(): String {
    return this.replace("'", "''")
        .replace("\\", "\\\\")
        .replace("\n", "\\n")
        .replace("\r", "\\r")
        .replace("\t", "\\t")
}

/**
 * Utility class to convert JSON data to SQL INSERT statements using primitive parameters.
 * This can be used to convert country data from JSON format to SQL statements.
 */
object JsonToSqlConverter {

    /**
     * Converts a JSON file containing country data to SQL INSERT statements.
     *
     * @param jsonFilePath Path to the JSON file
     * @param outputFilePath Path where the SQL file will be saved
     * @param tableName Name of the table for INSERT statements
     */
    fun convertCountryJsonToSql(jsonFilePath: String, outputFilePath: String, tableName: String = "country") {
        val jsonContent = File(jsonFilePath).readText()
        val jsonArray = Json.parseToJsonElement(jsonContent).jsonArray

        val sqlStatements = buildString {
            appendLine("-- Generated SQL INSERT statements from JSON data")
            appendLine("-- Source: $jsonFilePath")
            appendLine()

            jsonArray.forEach { countryJson ->
                countryJson as JsonObject

                val id = UUID.randomUUID()
                val nameCommon = countryJson["name"]?.jsonObject?.get("common")?.jsonPrimitive?.content?.escapeSql() ?: ""
                val nameOfficial = countryJson["name"]?.jsonObject?.get("official")?.jsonPrimitive?.content?.escapeSql() ?: ""
                val capital = countryJson["capital"]?.jsonArray?.getOrNull(0)?.jsonPrimitive?.content?.escapeSql() ?: ""
                val region = countryJson["region"]?.jsonPrimitive?.content?.escapeSql() ?: ""
                val subregion = countryJson["subregion"]?.jsonPrimitive?.content?.escapeSql() ?: ""
                val language = null // No hay idioma en el JSON
                val population = countryJson["population"]?.jsonPrimitive?.long ?: 0
                val timezones = countryJson["timezones"]?.jsonArray?.joinToString(",") { it.jsonPrimitive.content.escapeSql() } ?: ""
                val continents = countryJson["continents"]?.jsonArray?.joinToString(",") { it.jsonPrimitive.content.escapeSql() } ?: ""
                val flagUrl = countryJson["flags"]?.jsonObject?.get("png")?.jsonPrimitive?.content?.escapeSql()
                val flagDescription = countryJson["flags"]?.jsonObject?.get("alt")?.jsonPrimitive?.content?.escapeSql()
                val shieldUrl = countryJson["coatOfArms"]?.jsonPrimitive?.content?.escapeSql()
                val startOfWeek = countryJson["startOfWeek"]?.jsonPrimitive?.content?.escapeSql() ?: ""

                appendLine("INSERT INTO $tableName (id, name_common, name_official, capital, region, subregion, language, population, timezones, continents, flag_url, flag_description, shield_url, start_of_week) VALUES")
                appendLine("('$id', '$nameCommon', '$nameOfficial', '$capital', '$region', '$subregion', NULL, $population, '$timezones', '$continents', '${flagUrl ?: ""}', '${shieldUrl ?: ""}', '$startOfWeek');")
                appendLine()
            }
        }

        File(outputFilePath).writeText(sqlStatements)
        println("SQL file generated successfully at: $outputFilePath")
    }

    /**
     * Generic function to convert any JSON array to SQL INSERT statements.
     *
     * @param jsonFilePath Path to the JSON file
     * @param outputFilePath Path where the SQL file will be saved
     * @param tableName Name of the table for INSERT statements
     * @param columnMappings Map of JSON keys to SQL column names
     */
    fun convertJsonToSql(
        jsonFilePath: String,
        outputFilePath: String,
        tableName: String,
        columnMappings: Map<String, String>
    ) {
        val jsonContent = File(jsonFilePath).readText()
        val jsonArray = Json.parseToJsonElement(jsonContent).jsonArray

        val sqlStatements = buildString {
            appendLine("-- Generated SQL INSERT statements from JSON data")
            appendLine("-- Source: $jsonFilePath")
            appendLine()

            jsonArray.forEach { jsonElement ->
                jsonElement as JsonObject

                val columns = mutableListOf<String>()
                val values = mutableListOf<String>()

                columnMappings.forEach { (jsonKey, sqlColumn) ->
                    if (jsonKey == "__custom__") {
                        columns.add(sqlColumn)
                        values.add("''")
                        return@forEach
                    }

                    val paths = jsonKey.split(".")
                    var currentElement: JsonElement? = jsonElement

                    for (path in paths) {
                        currentElement = when {
                            path.endsWith("[]") -> {
                                val arrayKey = path.removeSuffix("[]")
                                val value = (currentElement as? JsonObject)?.get(arrayKey)
                                when (value) {
                                    is JsonArray -> value.getOrNull(0)
                                    is JsonPrimitive -> value
                                    else -> null
                                }
                            }
                            currentElement is JsonObject -> currentElement[path]
                            else -> null
                        }
                        if (currentElement == null) break
                    }

                    if (currentElement != null) {
                        columns.add(sqlColumn)
                        val value = when {
                            currentElement is JsonPrimitive && currentElement.isString ->
                                "'${currentElement.content.escapeSql()}'"
                            currentElement is JsonPrimitive -> currentElement.content
                            else -> "NULL"
                        }
                        values.add(value)
                    }
                }

                if (columns.isNotEmpty()) {
                    appendLine("INSERT INTO $tableName (${columns.joinToString(", ")}) VALUES")
                    appendLine("(${values.joinToString(", ")});")
                    appendLine()
                }
            }
        }

        File(outputFilePath).writeText(sqlStatements)
        println("SQL file generated successfully at: $outputFilePath")
    }
}

