/* Quando é criado um utilizador, é automaticamente criado um dispositivo */
CREATE TRIGGER IF NOT EXISTS AdicionaUtilizador
AFTER INSERT ON Utilizador
FOR EACH ROW
  BEGIN
    INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (1, New.nome, New.idTipoDispositivo, id);
  END;

/* Quando é eliminado um utilizador, é apagado os respetivos dispositivos */
CREATE TRIGGER IF NOT EXISTS RemoveUtilizador
AFTER DELETE ON Utilizador
FOR EACH ROW
  BEGIN
    DELETE FROM Dispositivo WHERE Dispositivo.idUser = Old.id;
  END;

/* tche sei la */
CREATE TRIGGER IF NOT EXISTS AtualizaUtilizador
AFTER UPDATE OF argumento ON Utilizador
FOR EACH ROW
  BEGIN
    UPDATE tabela
    SET argumento = New.argumento;
    WHERE argumento = Old.argumento;
  END;
