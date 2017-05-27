.bail ON
.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

-- 7. A música em 6ª posição em cada cidade.
SELECT DISTINCT Cidade.nome AS Cidade, Musica.nome AS Musica
FROM Cidade
INNER JOIN Top
ON Cidade.id = Top.idCidade
INNER JOIN Musica
ON Top.idMusica = Musica.id
WHERE Top.posicao = 6
GROUP BY Cidade.nome;
