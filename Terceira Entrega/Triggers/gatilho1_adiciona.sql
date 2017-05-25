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

/* Quando é eliminado um utilizador, é apagada toda a informacao referida ao mesmo */
/* Ainda nao funciona */
CREATE TRIGGER IF NOT EXISTS RemoveUtilizador
BEFORE DELETE ON Utilizador
FOR EACH ROW
  BEGIN
    DELETE FROM Dispositivo WHERE Dispositivo.idUser = Old.id;
    DELETE FROM UtilizadorFree WHERE UtilizadorFree.id = Old.id;
    DELETE FROM UtilizadorPremium WHERE UtilizadorPremium.id = Old.id;
    DELETE FROM SegueInterprete WHERE SegueInterprete.idUser = Old.id;
    DELETE FROM SeguePlaylist WHERE SeguePlaylist.idUser = Old.id;
    DELETE FROM SegueUtilizador WHERE SegueUtilizador.idUser = Old.id;
    DELETE FROM SegueUtilizador WHERE SegueUtilizador.idUserSeguido = Old.id;
    DELETE FROM Mensagem WHERE Mensagem.idEmissor = Old.id;
    DELETE FROM Mensagem WHERE Mensagem.idRecetor = Old.id;
    DELETE FROM Playlist WHERE Playlist.idDono = Old.id;
  END;

/* Quando a data de nascimento é mudada, a idade é atualizada */
CREATE TRIGGER IF NOT EXISTS UpdateUtilizador
AFTER UPDATE OF dataNascimento ON Utilizador
FOR EACH ROW
  BEGIN
    UPDATE Utilizador
    SET idade = date('now') - New.dataNascimento
    WHERE id = New.id;
  END;
