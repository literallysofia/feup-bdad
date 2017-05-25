.mode columns
.header on
.nullvalue NULL

/* Quando é criado um utilizador, é automaticamente criado um dispositivo um UtilizadorFree */
CREATE TRIGGER IF NOT EXISTS AdicionaUtilizador
AFTER INSERT ON Utilizador
FOR EACH ROW
  BEGIN
    INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES ((SELECT max(idDispositivo) AS idMax
    FROM (SELECT Dispositivo.idDispositivo FROM Dispositivo)) + 1, 'Device', abs(random() % 3) + 1, New.id);
    INSERT INTO UtilizadorFree (id, tempoLimite) VALUES (New.id, 30);
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
