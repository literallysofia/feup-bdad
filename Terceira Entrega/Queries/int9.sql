.bail ON
.mode columns
.headers on
.nullvalue NULL
PRAGMA foreign_keys = ON;

-- 9. Artistas com concertos marcados no Verão do ano 2017.
SELECT Interprete.nome AS Interprete, Concerto.data AS Data
FROM Interprete, Concerto
WHERE Concerto.data BETWEEN '2017-06-21' AND '2017-09-22'
AND Concerto.idInterprete = Interprete.id;
