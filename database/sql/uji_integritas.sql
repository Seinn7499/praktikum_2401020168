-- NIM ganda: harus ditolak oleh UNIQUE
INSERT INTO mahasiswa
    (nim, nama, email, usia, program_studi_id)
VALUES
    ('2401020168', 'Nama Ganda',
     'ganda@example.com', 20, 1);

-- Program studi tidak tersedia: harus ditolak oleh FOREIGN KEY
INSERT INTO mahasiswa
    (nim, nama, email, usia, program_studi_id)
VALUES
    ('2401020188', 'Uji Relasi',
     'relasi@example.com', 20, 99);

SELECT COUNT(*) AS jumlah_mahasiswa FROM mahasiswa;