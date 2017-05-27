.bail ON
.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

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
