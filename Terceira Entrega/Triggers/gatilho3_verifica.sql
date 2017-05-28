.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

.print ''
.print 'Estado atual de Playlist:'
.print ''

SELECT Playlist.id AS 'ID', Playlist.nome AS 'Nome', Playlist.duracao AS 'Duracao'
FROM Playlist
WHERE Playlist.id = 1;

.print ''
.print 'Apos criacao de MusicaPlaylist -> dispara gatilho que incrementa a duracao de Playlist ;'
.print ''

INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (1, 1);

SELECT DISTINCT Playlist.id AS 'Playlist ID', Playlist.nome AS 'Playlist nome', Playlist.duracao AS 'Playlist duracao', Musica.id AS 'Musica ID', Musica.duracao AS 'Musica duracao'
FROM Playlist
INNER JOIN Musica
ON Musica.id = 1 AND Playlist.id = 1;

.print ''
.print 'Apos remocao de MusicaPlaylist -> dispara gatilho que decrementa a duracao de Playlist ;'
.print ''

DELETE FROM MusicaPlaylist WHERE MusicaPlaylist.idMusica = 1 AND MusicaPlaylist.idPlaylist = 1;

SELECT DISTINCT Playlist.id AS 'Playlist ID', Playlist.nome AS 'Playlist nome', Playlist.duracao AS 'Playlist duracao', Musica.id AS 'Musica ID', Musica.duracao AS 'Musica duracao'
FROM Playlist
INNER JOIN Musica
ON Musica.id = 1 AND Playlist.id = 1;
