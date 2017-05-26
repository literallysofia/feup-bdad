.mode columns
.header on
.nullvalue NULL

.print ''
.print 'Estado atual do Utilizador:'
.print ''

SELECT Utilizador.id AS 'ID', Utilizador.nome AS 'Nome', Utilizador.dataNascimento AS 'Data Nascimento', Utilizador.idade AS 'Idade'
FROM Utilizador
WHERE Utilizador.id = 1;

.print ''
.print 'Update da data de nascimento de um Utilizador com ID = 1 -> dispara gatilho no qual e valida ou nao a data ;'
.print ''
.print 'Data de nascimento = 2010-02-20 (caso invalido) :'
.print ''

UPDATE Utilizador SET dataNascimento = '2010-02-20' WHERE Utilizador.id = 1;

.print ''
SELECT Utilizador.id AS 'ID', Utilizador.nome AS 'Nome', Utilizador.dataNascimento AS 'Data Nascimento', Utilizador.idade AS 'Idade'
FROM Utilizador
WHERE Utilizador.id = 1;

.print ''
.print 'Ao ser validado, ou seja, apos ser atualizada a data de nascimento, a idade sera ajustada.'
.print 'Data de nascimento = 1995-02-20 (caso valido) :'
.print ''

UPDATE Utilizador SET dataNascimento = '1995-02-20' WHERE Utilizador.id = 1;

SELECT Utilizador.id AS 'ID', Utilizador.nome AS 'Nome', Utilizador.dataNascimento AS 'Data Nascimento', Utilizador.idade AS 'Idade'
FROM Utilizador
WHERE Utilizador.id = 1;
