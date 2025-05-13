package domain.usecase.media

import domain.interfaces.MediaInterface
import java.util.*

class DeleteMediaUseCase(private val repository: MediaInterface) {
    suspend operator fun invoke(id: UUID): Boolean {
        return repository.delete(id)
    }
}