.bail ON
.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

-- 1. Duração dos álbuns do intérprete com ID #4.
SELECT A.nome AS NomeAlbum, SUM(M.duracao) AS Duracao
FROM Album A
INNER JOIN MusicaAlbum MA
ON MA.idAlbum = A.id
INNER JOIN Musica M
ON M.id = MA.idMusica
WHERE A.idInterprete = 4
GROUP BY A.nome;
