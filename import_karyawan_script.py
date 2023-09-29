# Melakukan import mysql connector
import mysql.connector

# Melakukan percobaan koneksi
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="mydatabase"
)

# Membuat objek cursor sebagai penanda
cursor = conn.cursor()

# Deklarasi SQL Query untuk memasukkan rekaman ke DB (Karyawan)
insert_sql = (
    "INSERT INTO employee (FIRST_NAME, LAST_NAME, AGE, SEX, INCOME) "
    "VALUES (%s, %s, %s, %s, %s)"
)
values = ("Leefa", "afa", 22, "Female", 45000)  

try:
    # Eksekusi SQL Command
    cursor.execute(insert_sql, values)

    # Melakukan perubahan (commit) pada DB
    conn.commit()
    print("Data berhasil dimasukkan ke database.")

except mysql.connector.Error as err:
    # Rollback jika ada masalah
    conn.rollback()
    print(f"Error: {err}")

finally:
    # Menutup koneksi
    cursor.close()
    conn.close()
    