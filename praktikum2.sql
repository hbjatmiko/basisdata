/*
* Nama : Hasim Budi Jatmiko
* Kelas : TI 17 D2
* NIM : 311710448
*/

-- PRAKTIKUM 2

# Berdasarkan database yang sudah dibuat di praktikum1

# Menggunakan database
USE latihan01;

# Menambahkan kolom kode_pos
ALTER TABLE data_mahasiswa ADD kode_pos VARCHAR(10) AFTER kota;

# Menambahkan kolom jenis_kelamin
ALTER TABLE data_mahasiswa ADD jenis_kelamin VARCHAR(10) AFTER hp;

# Menambahkan tanggal_lahir dan kode_dosen
ALTER TABLE data_mahasiswa ADD ( tanggal_lahir date, kode_dosen VARCHAR(10));

# Memasukan data kedalam tabel
INSERT INTO data_mahasiswa VALUES
    (11223344, "Ari Santoso", "", "Bekasi", "", "", "Laki-Laki", "1998-10-12", ""),
    (11223345, "Ario Talib", "", "Cikarang", "", "", "Laki-Laki", "1999-11-16", ""),
    (11223346, "Dina Marliana", "", "Karawang", "", "", "Perempuan", "1997-12-01", ""),
    (11223347, "Lisa Ayu", "", "Bekasi", "", "", "Perempuan", "1996-01-02", ""),
    (11223348, "Tiara Wahidah", "", "Bekasi", "", "", "Perempuan", "1990-02-05", ""),
    (11223349, "Anton Sinaga", "", "Cikarang", "", "", "Laki-Laki", "1988-03-10", "");

# Menampilkan semua isi atau record tabel
SELECT * FROM data_mahasiswa;

# Mengubah data tanggal lahir mahasiswa bernama Ari menjadi : 1979-08-31
UPDATE data_mahasiswa SET tanggal_lahir = "1979-08-31" WHERE nama = "Ari Santoso";

# Menampilkan satu baris atau record data yang telah diubah yaitu record dengan nama Ari saja
SELECT * FROM data_mahasiswa WHERE nama = "Ari Santoso";

# Menghapus data mahasiswa bernama Dina
DELETE FROM data_mahasiswa WHERE nama = "Dina Marliana";

# Menampilkan record data yang tanggal kelahirannya lebih dari satu atau sama dengan 1996-01-02
SELECT * FROM data_mahasiswa WHERE tanggal_lahir >= "1996-01-02";

# Menampilkan semua mahasiswa yang berasal dari Bekasi dan berjenis kelamin perempuan
SELECT * FROM data_mahasiswa WHERE kota = "Bekasi" AND jenis_kelamin = "Perempuan";

# Menampilkan semua mahasiswa yang berasal dari Bekasi dengan jenis kelamin laki- laki atau
# mahasiswa yang berumur lebih dari 22 tahun dengan kelamin perempuan.
SELECT * FROM data_mahasiswa WHERE kota = "Bekasi" AND jenis_kelamin = "Laki-Laki"
OR FLOOR(DATEDIFF(CURDATE(), tanggal_lahir) / 365) > 22 AND jenis_kelamin = "Perempuan";

# Menampilkan data nama dan alamat mahasiswa saja dari tabel tersebut
SELECT nama, alamat FROM data_mahasiswa;

# Menampilkan data mahasiswa terurut berdasarkan nama
SELECT * FROM data_mahasiswa ORDER BY nama ASC;
