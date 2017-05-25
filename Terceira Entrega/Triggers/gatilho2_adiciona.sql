.mode columns
.header on
.nullvalue NULL

/* Verifica se a data de nascimento é valida, a idade minima para o user é 10 anos */
CREATE TRIGGER IF NOT EXISTS ValidaDataNascimento
BEFORE UPDATE OF dataNascimento ON Utilizador
WHEN julianday(New.dataNascimento) > round((julianday('now') - 3650))
  BEGIN
    SELECT RAISE(ABORT, "data de nascimento invalida!");
  END;

/* Quando a data de nascimento é mudada, a idade é atualizada */
CREATE TRIGGER IF NOT EXISTS UpdateDataNascimento
AFTER UPDATE OF dataNascimento ON Utilizador
FOR EACH ROW
  BEGIN
    UPDATE Utilizador
    SET idade = round((julianday('now') - julianday( New.dataNascimento)) / 375)
    WHERE id = New.id;
  END;
