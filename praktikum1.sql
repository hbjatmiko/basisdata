/*
* Nama : Hasim Budi Jatmiko
* Kelas : TI 17 D2
* NIM : 311710448
*/

-- PRAKTIKUM 1

# Membuat database
CREATE DATABASE latihan01;

# Menggunakan database
USE latihan01;

# Membuat tabel
CREATE TABLE biodata (
    nama VARCHAR(20) NOT NULL,
    alamat VARCHAR(30) NOT NULL
);

# Menambahkan kolom keterangan
ALTER TABLE biodata ADD keterangan VARCHAR(15) NOT NULL;

# Menambahkan kolom id
ALTER TABLE biodata ADD id INT(11) FIRST;

# Menambahkan kolom phone setelah kolom alamat
ALTER TABLE biodata ADD phone VARCHAR(15) AFTER alamat;

# Mengubah tipe data id dari int menjadi char
ALTER TABLE biodata MODIFY id CHAR(11);

# Mengubah nama kolom phone menjadi hp
ALTER TABLE biodata CHANGE phone hp VARCHAR(20) NOT NULL;

# Menghapus kolom keterangan
ALTER TABLE biodata DROP keterangan;

# Mengubah nama tabel menjadi data_mahasiswa
RENAME TABLE biodata TO data_mahasiswa;

# Mengubah nama kolom id menjadi nim
ALTER TABLE data_mahasiswa CHANGE id nim CHAR(11) NOT NULL;

# Menjadikan nim sebagai primary key
ALTER TABLE data_mahasiswa ADD PRIMARY KEY (nim);