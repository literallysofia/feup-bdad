.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

.print ''

SELECT count (*) AS 'Num Utilizador.id = 21'
FROM Utilizador
WHERE Utilizador.id = 21;

.print ''

SELECT count (*) AS 'Num Dispositivo.idUser = 21'
FROM Dispositivo
WHERE Dispositivo.idUser = 21;

.print ''

SELECT count (*) AS 'Num UtilizadorFree.id = 21'
FROM UtilizadorFree
WHERE UtilizadorFree.id = 21;

.print ''
.print 'Verificamos que nao existe nenhum Utilizador com ID = 21, nem Dispositivo e UtilizadorFree associado.'
.print ''
.print 'Criacao de um Utilizador com ID 21 -> dispara gatilho no qual e criado um Dispositivo e UtilizadorFree ;'

INSERT INTO Utilizador (id, nome, username, password, fotoPerfil, dataNascimento, email)
VALUES (21, 'Nathan Scott', 'scott23', 'ravensftw', 'https://robohash.org/autsapientenatus.jpg?size=50x50&set=set1', '1989-01-12', 'nathan23scott@gmail.com');

.print ''
.print 'Verificacao da criacao de Dispositivo e UtilizadorFree:'
.print ''

SELECT DISTINCT Utilizador.id AS 'Utilizador ID', Utilizador.nome AS 'Nome', Dispositivo.idDispositivo AS 'Dispositivo ID', UtilizadorFree.id AS 'UtilizadorFree ID'
FROM Utilizador
INNER JOIN Dispositivo
ON Dispositivo.idUser = Utilizador.id AND Dispositivo.idUser = 21
INNER JOIN UtilizadorFree
ON UtilizadorFree.id = Utilizador.id AND UtilizadorFree.id = 21;
