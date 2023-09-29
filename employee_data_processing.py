import psycopg2

# Konfigurasi koneksi ke database PostgreSQL
db_config = {
    'dbname': 'mydatabase',
    'user': 'postgres',
    'password': '12345678',
    'host': 'localhost',
    'port': '5432'
}

# Koneksi ke database
try:
    connection = psycopg2.connect(**db_config)
    cursor = connection.cursor()

    # Contoh perintah SQL untuk mengimpor data karyawan
    sql = """
    INSERT INTO employees (first_name, last_name, age, sex, income)
    VALUES (%s, %s, %s, %s, %s)
    """

    # Data karyawan yang akan diimpor
    employee_data = [
        ("Nelsen", "Ard", 22, "Male", 756000),
        ("Lina", "San", 21, "Female", 45000),
        # Tambahkan data karyawan lainnya di sini
    ]

    # Eksekusi perintah SQL untuk setiap data karyawan
    for employee in employee_data:
        cursor.execute(sql, employee)

    # Commit perubahan ke database
    connection.commit()

    print("Data karyawan berhasil diimpor ke database.")

except Exception as e:
    print("Terjadi kesalahan:", e)

finally:
    # Tutup kursor dan koneksi
    if cursor:
        cursor.close()
    if connection:
        connection.close()
