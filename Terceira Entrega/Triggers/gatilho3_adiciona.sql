.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

/* Quando é adicionada uma musica a uma playlist, a sua duracao aumenta */
CREATE TRIGGER IF NOT EXISTS AdicionaMusicaPlaylist
AFTER INSERT ON MusicaPlaylist
FOR EACH ROW
  BEGIN
    UPDATE Playlist
    SET duracao = duracao + (SELECT Musica.duracao FROM Musica WHERE Musica.id = New.idMusica)
    WHERE id = New.idPlaylist;
  END;

/* Quando é removida uma musica a uma playlist, a sua duracao diminui */
CREATE TRIGGER IF NOT EXISTS RemoveMusicaPlaylist
AFTER DELETE ON MusicaPlaylist
FOR EACH ROW
  BEGIN
    UPDATE Playlist
    SET duracao = duracao - (SELECT Musica.duracao FROM Musica WHERE Musica.id = Old.idMusica)
    WHERE id = Old.idPlaylist;
  END;
