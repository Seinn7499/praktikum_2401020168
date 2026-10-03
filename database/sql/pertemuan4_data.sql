USE praktikum_web_2401020168;

INSERT INTO program_studi (nama_prodi) VALUES
    ('Ilmu Komputer'),
    ('Teknik Elektro');

INSERT INTO mahasiswa
    (nim, nama, email, usia, program_studi_id)
VALUES
    ('2401020168', 'Teguh Hidayat',
     'teguh@example.com', 20, 1),
    ('2401020170', 'Rina Marlina',
     'rina@example.com', 19, 1),
    ('2401020175', 'Dimas Prakoso',
     'dimas@example.com', 21, 2),
    ('2401020199', 'Data Sementara',
     'sementara2@example.com', 18, 2);

UPDATE mahasiswa
SET email = 'teguh.hidayat@example.com'
WHERE nim = '2401020168';

DELETE FROM mahasiswa
WHERE nim = '2401020199';

SELECT m.nim, m.nama, m.email, m.usia,
       p.nama_prodi
FROM mahasiswa AS m
JOIN program_studi AS p
    ON p.id = m.program_studi_id
ORDER BY m.nim;