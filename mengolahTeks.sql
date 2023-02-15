select substr(isi, locate('|||', isi) + 3, locate('|||', isi, locate('|||', isi) + 1) - locate('|||', isi) -3)
as kotaLahir
from dqlabdatateks;

-- Agung|||Semarang|||03 Juni 1992|||Jawa Tengah

-- 1
SELECT SUBSTR(isi, LOCATE('|||', isi) + 3, LOCATE('|||', isi, LOCATE('|||', isi) + 3) - LOCATE('|||', isi) - 3) AS tanggalLahir
FROM tabel;
-- 2
SELECT SUBSTR(isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 3, LOCATE('|||', isi, LOCATE('|||', isi, LOCATE('|||', isi) + 1) + 1) - LOCATE('|||', isi, LOCATE('|||', isi) + 1) - 3) as TanggalLahir
FROM dqlabdatateks;
