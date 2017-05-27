.bail ON
.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

-- 8. Número de álbuns de estúdio de cada artista, ordenados de forma descendente.
SELECT Interprete.nome AS Interprete, COUNT(TipoAlbum.idTipoAlbum) AS AlbunsEstudio
FROM Interprete, TipoAlbum, Album
WHERE TipoAlbum.idTipoAlbum = 1
AND Album.idInterprete = Interprete.id
GROUP BY Interprete.nome
ORDER BY AlbunsEstudio DESC;
