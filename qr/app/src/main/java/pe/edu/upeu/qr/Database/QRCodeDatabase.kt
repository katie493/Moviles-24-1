package pe.edu.upeu.qr.Database

import android.content.Context
import androidx.room.Database
import androidx.room.Room
import androidx.room.RoomDatabase
import pe.edu.upeu.qr.Entities.QRCode
import pe.edu.upeu.qr.dao.QRCodeDao

@Database(entities = [QRCode::class], version = 1, exportSchema = true)
abstract class QRCodeDatabase : RoomDatabase() {
    abstract fun qrCodeDao(): QRCodeDao

    companion object {
        private const val DB_NAME = "qr_codes_db"

        fun getInstance(context: Context): QRCodeDatabase {
            return Room.databaseBuilder(context, QRCodeDatabase::class.java, DB_NAME)
                .build()
        }
    }
}
