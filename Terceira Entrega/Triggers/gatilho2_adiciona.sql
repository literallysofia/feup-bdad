.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

/* Verifica se a data de nascimento é valida, a idade minima para o user é 10 anos */
CREATE TRIGGER IF NOT EXISTS ValidaDataNascimento
BEFORE UPDATE OF dataNascimento ON Utilizador
WHEN julianday(New.dataNascimento) > round((julianday('now') - 3650))
  BEGIN
    SELECT RAISE(ABORT, "data de nascimento invalida!");
  END;
