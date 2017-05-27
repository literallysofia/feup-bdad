.bail ON
.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

-- 10. Número de músicas de cada playlist.
SELECT Playlist.nome AS Playlist, COUNT(MusicaPlaylist.idMusica) AS Musicas
FROM Playlist, MusicaPlaylist
WHERE MusicaPlaylist.idPlaylist = Playlist.id
GROUP BY Playlist.nome;
