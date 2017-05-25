.mode columns
.header on
.nullvalue NULL

/* Quando é adicionada uma musica a uma playlist, a sua duracao aumenta */
CREATE TRIGGER IF NOT EXISTS AdicionaMusicaPlaylist
AFTER INSERT ON MusicaPlaylist
FOR EACH ROW
  BEGIN
    UPDATE Playlist
    SET duracao = duracao + (SELECT Musica.duracao FROM Musica WHERE Musica.id = New.idMusica)
    WHERE id = New.idPlaylist;
  END;

/* Quando é apagada uma musica a uma playlist, a sua duracao dominui */
CREATE TRIGGER IF NOT EXISTS RemoveMusicaPlaylist
AFTER DELETE ON MusicaPlaylist
FOR EACH ROW
  BEGIN
    UPDATE Playlist
    SET duracao = duracao + (SELECT Musica.duracao FROM Musica WHERE Musica.id = New.idMusica)
    WHERE id = New.idPlaylist;
  END;

/* Atualiza o top de uma musica */
CREATE TRIGGER IF NOT EXISTS UpdatePLaylist
AFTER UPDATE OF argumento ON tabela
FOR EACH ROW
  BEGIN
    UPDATE tabela
    SET argumento = New.argumento
    WHERE argumento = Old.argumento;
  END;
