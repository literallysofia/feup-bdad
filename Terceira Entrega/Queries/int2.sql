.bail ON
.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

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
