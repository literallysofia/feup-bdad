.mode columns
.header on
.nullvalue NULL

.print ''
.print 'Após criação de MusicaPlaylist -> dispara gatilho no qual incrementa a duração da Playlist ;'
.print 'Playlist com ID = X ;'
.print ''

INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (1, X);

.print ''
.print 'Após remoção de MusicaPlaylist -> dispara gatilho no qual decrementa a duração da Playlist ;'
.print 'Playlist com ID = X ;'
.print ''

DELETE FROM MusicaPlaylist WHERE MusicaPlaylist.idMusica = 1 AND MusicaPlaylist.idPlaylist = X;
