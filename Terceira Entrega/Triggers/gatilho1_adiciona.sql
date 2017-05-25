.mode columns
.header on
.nullvalue NULL

/* Validacao do utilizador: id tem que ser maior que o maximo dos ja existentes */
CREATE TRIGGER IF NOT EXISTS ValidaIdUtilizador
BEFORE INSERT ON Utilizador
WHEN New.id < (SELECT max(id) as idMax FROM (SELECT id FROM Utilizador))
  BEGIN
    Select RAISE(ABORT, "id do utilizador invalido!");
  END;

/* Quando é criado um utilizador, é automaticamente criado um dispositivo um UtilizadorFree */
CREATE TRIGGER IF NOT EXISTS AdicionaUtilizador
AFTER INSERT ON Utilizador
FOR EACH ROW
  BEGIN
    INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES ((SELECT max(idDispositivo) AS idMax
    FROM (SELECT idDispositivo FROM Dispositivo)) + 1, 'Device', abs(random() % 3) + 1, New.id);
    INSERT INTO UtilizadorFree (id, tempoLimite) VALUES (New.id, 30);
  END;
