.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

.print ''
.print 'Estado atual do Utilizador:'
.print ''

SELECT Utilizador.id AS 'ID', Utilizador.nome AS 'Nome', Utilizador.dataNascimento AS 'Data Nascimento'
FROM Utilizador
WHERE Utilizador.id = 1;

.print ''
.print 'Update da data de nascimento de um Utilizador com ID = 1 -> dispara gatilho no qual e valida ou nao a data ;'
.print ''
.print 'Data de nascimento = 2010-02-20 (caso invalido) :'
.print ''

UPDATE Utilizador SET dataNascimento = '2010-02-20' WHERE Utilizador.id = 1;

.print ''
SELECT Utilizador.id AS 'ID', Utilizador.nome AS 'Nome', Utilizador.dataNascimento AS 'Data Nascimento'
FROM Utilizador
WHERE Utilizador.id = 1;

.print ''
.print 'Data de nascimento = 2000-02-20 (caso valido) :'
.print ''

UPDATE Utilizador SET dataNascimento = '2000-02-20' WHERE Utilizador.id = 1;

SELECT Utilizador.id AS 'ID', Utilizador.nome AS 'Nome', Utilizador.dataNascimento AS 'Data Nascimento'
FROM Utilizador
WHERE Utilizador.id = 1;
