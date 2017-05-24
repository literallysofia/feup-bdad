CREATE TRIGGER IF NOT EXISTS AdicionaUtilizador
AFTER INSERT ON Utilizador
FOR EACH ROW
WHEN codicao
  BEGIN
    INSERT INTO tabela VALUES
  END;

CREATE TRIGGER IF NOT EXISTS nome
AFTER DELETE ON tabela
FOR EACH ROW
  BEGIN
    DELETE FROM tabela WHERE algo acontece;
  END;

CREATE TRIGGER IF NOT EXISTS nome
AFTER UPDATE OF argumento ON tabela
FOR EACH ROW
  BEGIN
    UPDATE tabela
    SET argumento = New.argumento
    WHERE argumento = Old.argumento;
  END;
