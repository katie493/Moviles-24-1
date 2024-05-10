package pe.edu.upeu.qr.dao

import androidx.room.Dao
import androidx.room.Delete
import androidx.room.Insert
import androidx.room.Query
import androidx.room.Update
import pe.edu.upeu.qr.Entities.QRCode

@Dao
interface QRCodeDao {
    // ... métodos de la interfaz ...
    @Insert
    suspend fun insert(qrCode: QRCode)

    @Query("SELECT * FROM qr_codes")
    suspend fun getAll(): List<QRCode>

    @Query("SELECT * FROM qr_codes WHERE id = :id")
    suspend fun getById(id: Int): QRCode?

    @Update
    suspend fun update(qrCode: QRCode)

    @Delete
    suspend fun delete(qrCode: QRCode)
}


