package pe.edu.upeu.qr.Entities

import androidx.room.Entity
import androidx.room.PrimaryKey

@Entity(tableName = "qr_codes") // Nombre de la tabla en la base de datos
data class QRCode(
    @PrimaryKey(autoGenerate = true) val id: Int = 0, // ID autogenerado
    val qrCode: String, // El código QR escaneado
    val scanDate: Long = System.currentTimeMillis() // Fecha de escaneo
)
