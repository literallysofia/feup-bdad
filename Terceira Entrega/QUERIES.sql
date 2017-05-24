--Duracao dos albuns do Interprete com id 4

SELECT A.nome AS NomeAlbum, SUM(M.duracao) AS Duracao
FROM Album A
INNER JOIN MusicaAlbum MA
ON MA.idAlbum = A.id
INNER JOIN Musica M
ON M.id = MA.idMusica
WHERE A.idInterprete = '4'
GROUP BY A.nome;

--O numero de concertos do interprete com nome Twenty One Pilots no Reino Unido

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

--Id dos Utilizadores premium que usam telemovel

SELECT UP.id AS PhonePremiumUsers
FROM UtilizadorPremium UP
INNER JOIN Utilizador U
ON U.id=UP.id
INNER JOIN Dispositivo D
ON D.idUser=U.id
INNER JOIN TipoDispositivo TD
ON TD.idTipoDispositivo = D.idTipoDispositivo
WHERE TD.tipoNome='Phone';

--Media das posiçoes das musicas da Playlist com id 4 no Top de todas as cidades

SELECT avg(T.posicao)
FROM Top T
INNER JOIN Musica M
ON M.id=T.idMusica
INNER JOIN MusicaPlaylist MP
ON MP.idMusica=M.id
WHERE MP.idPlaylist='4';
