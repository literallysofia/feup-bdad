.bail ON
.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

-- 6. Playlists que contêm músicas dos Radiohead.
SELECT Playlist.nome AS Nome
FROM Playlist
INNER JOIN MusicaPlaylist
ON Playlist.id = MusicaPlaylist.idPlaylist
INNER JOIN Musica
ON Musica.id = MusicaPlaylist.idMusica
INNER JOIN MusicaAlbum
ON Musica.id = MusicaAlbum.idMusica
INNER JOIN Album
ON Album.id = MusicaAlbum.idAlbum
INNER JOIN Interprete
ON Interprete.id = Album.idInterprete
WHERE Interprete.nome = 'Radiohead';
