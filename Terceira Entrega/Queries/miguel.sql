-- Playlists que contêm músicas dos Radiohead.
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

-- A música em 6ª posição em cada cidade.
SELECT DISTINCT Cidade.nome AS Cidade, Musica.nome AS Musica
FROM Cidade
INNER JOIN Top
ON Cidade.id = Top.idCidade
INNER JOIN Musica
ON Top.idMusica = Musica.id
WHERE Top.posicao = 6
GROUP BY Cidade.nome;

-- Número de álbuns de estúdio de cada artista, ordenados de forma descendente.
SELECT Interprete.nome AS Interprete, COUNT(TipoAlbum.idTipoAlbum) AS AlbunsEstudio
FROM Interprete, TipoAlbum, Album
WHERE TipoAlbum.idTipoAlbum = 1 AND Album.idInterprete = Interprete.id
GROUP BY Interprete.nome
ORDER BY AlbunsEstudio DESC;

-- Artistas com concertos marcados no Verão do ano 2017.
SELECT Interprete.nome AS Interprete, Concerto.data AS Data
FROM Interprete, Concerto
WHERE Concerto.data BETWEEN '06/21/2017' AND '09/22/2017' AND Concerto.idInterprete = Interprete.id;

-- Número de músicas de cada playlist.
SELECT Playlist.nome AS Playlist, COUNT(MusicaPlaylist.idMusica) AS Musicas
FROM Playlist, MusicaPlaylist
WHERE MusicaPlaylist.idPlaylist = Playlist.id
GROUP BY Playlist.nome;
