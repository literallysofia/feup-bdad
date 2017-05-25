.mode columns
.header on
.nullvalue NULL

.print ''
.print 'Update da data de nascimento de um Utilizador com ID X -> dispara gatilho no qual é valida ou não a data ;'
.print ''
.print 'Data de nascimento = 2010-02-20 (caso invalido) :'
.print ''

UPDATE Utilizador SET dataNascimento = '2010-02-20' WHERE Utilizador.id = X;

.print 'Rejeitado.'
.print ''
.print 'Ao ser validado, ou seja, apos ser atualizada a data de nascimento, a idade será ajustada.'
.print 'Data de nascimento = 1995-02-20 (caso valido) :'
.print ''

UPDATE Utilizador SET dataNascimento = '1995-02-20' WHERE Utilizador.id = X;
