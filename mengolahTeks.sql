select substr(isi, locate('|||', isi) + 3, locate('|||', isi, locate('|||', isi) + 1) - locate('|||', isi) -3)
as kotaLahir
from dqlabdatateks;

-- Agung|||Semarang|||03 Juni 1992|||Jawa Tengah