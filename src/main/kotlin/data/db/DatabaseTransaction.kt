package data.db

import kotlinx.coroutines.Dispatchers
import org.jetbrains.exposed.sql.Transaction
import org.jetbrains.exposed.sql.transactions.experimental.newSuspendedTransaction

/**
 * Ejecuta una transacción suspendida en el contexto de IO usando Exposed.
 *
 * @param code Bloque de código a ejecutar dentro de la transacción.
 * @return El resultado de la transacción.
 */
suspend fun <T> suspendedTransaction(code: Transaction.() -> T): T {
    return newSuspendedTransaction(Dispatchers.IO, statement = code)
}