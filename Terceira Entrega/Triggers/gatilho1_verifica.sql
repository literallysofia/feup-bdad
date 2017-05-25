.mode columns
.header on
.nullvalue NULL

.print ''
.print 'Criacao de um Utilizador com ID 21 -> dispara gatilho no qual é criado um Dispositivo e UtilizadorFree ;'
.print ''

INSERT INTO Utilizador (id, nome, username, password, fotoPerfil, dataNascimento, idade, email)
VALUES (21, 'Nathan Scott', 'scott23', 'ravensftw', 'https://robohash.org/autsapientenatus.jpg?size=50x50&set=set1', '1989-01-12', 28, 'nathan23scott@gmail.com');
