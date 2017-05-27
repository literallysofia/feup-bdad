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
WHERE A.idInterprete = '4'
GROUP BY A.nome;

-- 2. O número de concertos do intérprete com nome Twenty One Pilots no Reino Unido.
SELECT COUNT(*) AS NConcertos
FROM Interprete I
INNER JOIN Concerto O
ON O.idInterprete = I.id
INNER JOIN Cidade C
ON C.id = O.idCidade
INNER JOIN Pais P
ON P.id = C.idPais
WHERE I.nome = 'Twenty One Pilots'
AND P.nome = 'United Kingdom';

-- 3. Os IDs dos utilizadores premium que usam telemóvel.
SELECT UP.id AS PhonePremiumUsers
FROM UtilizadorPremium UP
INNER JOIN Utilizador U
ON U.id=UP.id
INNER JOIN Dispositivo D
ON D.idUser=U.id
INNER JOIN TipoDispositivo TD
ON TD.idTipoDispositivo = D.idTipoDispositivo
WHERE TD.tipoNome='Phone';

-- 4. Média das posições das músicas da playlist com ID #4 no top de todas as cidades.
SELECT avg(T.posicao)
FROM Top T
INNER JOIN Musica M
ON M.id=T.idMusica
INNER JOIN MusicaPlaylist MP
ON MP.idMusica=M.id
WHERE MP.idPlaylist='4';

-- 5. Top 5 dos intérpretes mais seguidos.
SELECT I.nome AS Interprete, COUNT(U.id) AS Seguidores
FROM Interprete I
INNER JOIN SegueInterprete SI
ON I.id=SI.idInterprete
INNER JOIN Utilizador U
ON U.id=SI.idUser
GROUP BY I.nome
ORDER BY Seguidores DESC
LIMIT 5;

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

-- 7. A música em 6ª posição em cada cidade.
SELECT DISTINCT Cidade.nome AS Cidade, Musica.nome AS Musica
FROM Cidade
INNER JOIN Top
ON Cidade.id = Top.idCidade
INNER JOIN Musica
ON Top.idMusica = Musica.id
WHERE Top.posicao = 6
GROUP BY Cidade.nome;

-- 8. Número de álbuns de estúdio de cada artista, ordenados de forma descendente.
SELECT Interprete.nome AS Interprete, COUNT(TipoAlbum.idTipoAlbum) AS AlbunsEstudio
FROM Interprete, TipoAlbum, Album
WHERE TipoAlbum.idTipoAlbum = 1 AND Album.idInterprete = Interprete.id
GROUP BY Interprete.nome
ORDER BY AlbunsEstudio DESC;

-- 9. Artistas com concertos marcados no Verão do ano 2017.
SELECT Interprete.nome AS Interprete, Concerto.data AS Data
FROM Interprete, Concerto
WHERE Concerto.data BETWEEN '2017/06/21' AND '2017/09/22' AND Concerto.idInterprete = Interprete.id;

-- 10. Número de músicas de cada playlist.
SELECT Playlist.nome AS Playlist, COUNT(MusicaPlaylist.idMusica) AS Musicas
FROM Playlist, MusicaPlaylist
WHERE MusicaPlaylist.idPlaylist = Playlist.id
GROUP BY Playlist.nome;
