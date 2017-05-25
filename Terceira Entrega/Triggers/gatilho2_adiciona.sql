.mode columns
.header on
.nullvalue NULL

CREATE TRIGGER IF NOT EXISTS AdicionaPlaylist
AFTER INSERT ON Playlist
FOR EACH ROW
WHEN codicao
  BEGIN
    INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (1, 17);
  END;

CREATE TRIGGER IF NOT EXISTS RemovePlaylist
AFTER DELETE ON Playlist
FOR EACH ROW
  BEGIN
    DELETE FROM tabela WHERE algo acontece;
  END;

/* Atualiza o top de uma musica */
CREATE TRIGGER IF NOT EXISTS AtualizaMusica
AFTER UPDATE OF argumento ON tabela
FOR EACH ROW
  BEGIN
    UPDATE tabela
    SET argumento = New.argumento
    WHERE argumento = Old.argumento;
  END;
