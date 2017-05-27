.bail ON
.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

-- 4. Média das posições das músicas da playlist com ID #4 no top de todas as cidades.
SELECT avg(T.posicao) AS AveragePosInTop
FROM Top T
INNER JOIN Musica M
ON M.id=T.idMusica
INNER JOIN MusicaPlaylist MP
ON MP.idMusica=M.id
WHERE MP.idPlaylist=4;
