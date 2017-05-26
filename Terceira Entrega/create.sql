PRAGMA foreign_keys = on;
.mode columns
.headers on
.nullvalue NULL

-- Table: Album
DROP TABLE IF EXISTS Album;
CREATE TABLE Album (
  id            INTEGER PRIMARY KEY,
  nome          STRING NOT NULL,
  capa          BLOB NOT NULL,
  ano           INTEGER NOT NULL CHECK(ano > 1920),
  idTipoAlbum   INTEGER REFERENCES TipoAlbum (idTipoAlbum) NOT NULL,
  idInterprete  INTEGER REFERENCES Interprete (id) NOT NULL
);

-- Table: Cidade
DROP TABLE IF EXISTS Cidade;
CREATE TABLE Cidade (
  id         INTEGER PRIMARY KEY,
  nome       STRING NOT NULL,
  idPais     INTEGER REFERENCES Pais (id) NOT NULL
);

-- Table: Concerto
DROP TABLE IF EXISTS Concerto;
CREATE TABLE Concerto (
  idConcerto    INTEGER PRIMARY KEY,
  data          DATE NOT NULL,
  idInterprete  INTEGER REFERENCES Interprete (id) NOT NULL,
  idCidade      INTEGER REFERENCES Cidade (id) NOT NULL
);

-- Table: Dispositivo
DROP TABLE IF EXISTS Dispositivo;
CREATE TABLE Dispositivo (
  idDispositivo       INTEGER PRIMARY KEY,
  nome                STRING NOT NULL,
  idTipoDispositivo   INTEGER REFERENCES TipoDispositivo (idTipoDispositivo) NOT NULL,
  idUser              INTEGER REFERENCES Utilizador (id) NOT NULL
);


-- Table: Genero
DROP TABLE IF EXISTS Genero;
CREATE TABLE Genero (
  idGenero     INTEGER PRIMARY KEY,
  nome         STRING NOT NULL UNIQUE
);

-- Table: Interprete
DROP TABLE IF EXISTS Interprete;
CREATE TABLE Interprete (
  id           INTEGER PRIMARY KEY,
  nome         STRING NOT NULL UNIQUE,
  verificado   BOOLEAN NOT NULL,
  fotoPerfil   BLOB,
  fotoCapa     BLOB,
  biografia    STRING CHECK(LENGTH(biografia) <= 300),
  idCidade     INTEGER REFERENCES Cidade (id) NOT NULL
);

-- Table: Mensagem
DROP TABLE IF EXISTS Mensagem;
CREATE TABLE Mensagem (
  id          INTEGER,
  conteudo    STRING NOT NULL CHECK(LENGTH(conteudo) <= 140),
  dataEnvio   DATE NOT NULL,
  idEmissor   INTEGER REFERENCES Utilizador (id),
  idRecetor   INTEGER REFERENCES Utilizador (id),
  PRIMARY KEY (id, idEmissor, idRecetor)
);

-- Table: Musica
DROP TABLE IF EXISTS Musica;
CREATE TABLE Musica (
  id            INTEGER PRIMARY KEY,
  nome          STRING NOT NULL,
  duracao       TIME NOT NULL CHECK(duracao > 0 AND duracao < 3600),
  reproducoes   INTEGER NOT NULL
);

-- Table: MusicaAlbum
DROP TABLE IF EXISTS MusicaAlbum;
CREATE TABLE MusicaAlbum (
  idMusica    INTEGER PRIMARY KEY REFERENCES Musica (id),
  idAlbum     INTEGER REFERENCES Album (id) NOT NULL,
  indice      INTEGER NOT NULL
);

-- Table: MusicaPlaylist
DROP TABLE IF EXISTS MusicaPlaylist;
CREATE TABLE MusicaPlaylist (
  idMusica      REFERENCES Musica (id),
  idPlaylist    INTEGER REFERENCES Playlist (id),
  PRIMARY KEY (idMusica, idPlaylist)
);

-- Table: Pais
DROP TABLE IF EXISTS Pais;
CREATE TABLE Pais (
  id       INTEGER PRIMARY KEY,
  nome     STRING UNIQUE NOT NULL
);

-- Table: Playlist
DROP TABLE IF EXISTS Playlist;
CREATE TABLE Playlist (
  id          INTEGER PRIMARY KEY,
  nome        STRING NOT NULL,
  imagem      BLOB,
  duracao     TIME NOT NULL,
  descricao   STRING,
  idDono      INTEGER REFERENCES Utilizador (id) NOT NULL
);

-- Table: SegueInterprete
DROP TABLE IF EXISTS SegueInterprete;
CREATE TABLE SegueInterprete (
  idUser          INTEGER REFERENCES Utilizador (id),
  idInterprete    INTEGER REFERENCES Interprete (id),
  PRIMARY KEY (idUser, idInterprete)
);

-- Table: SeguePlaylist
DROP TABLE IF EXISTS SeguePlaylist;
CREATE TABLE SeguePlaylist (
  idUser        INTEGER REFERENCES Utilizador (id),
  idPlaylist    INTEGER REFERENCES Playlist (id),
  PRIMARY KEY (idUser, idPlaylist)
);

-- Table: SegueUtilizador
DROP TABLE IF EXISTS SegueUtilizador;
CREATE TABLE SegueUtilizador (
  idUser          INTEGER REFERENCES Utilizador (id),
  idUserSeguido   INTEGER REFERENCES Utilizador (id),
  PRIMARY KEY (idUser, idUserSeguido)
);

-- Table: TipoAlbum
DROP TABLE IF EXISTS TipoAlbum;
CREATE TABLE TipoAlbum (
  idTipoAlbum     INTEGER PRIMARY KEY,
  tipoNome        STRING NOT NULL UNIQUE
);

-- Table: TipoDispositivo
DROP TABLE IF EXISTS TipoDispositivo;
CREATE TABLE TipoDispositivo (
  idTipoDispositivo   INTEGER PRIMARY KEY,
  tipoNome            STRING NOT NULL UNIQUE
);

-- Table: Top
DROP TABLE IF EXISTS Top;
CREATE TABLE Top (
  idMusica      INTEGER REFERENCES Musica (id),
  posicao       INTEGER NOT NULL CHECK(posicao <= 100),
  idCidade      INTEGER REFERENCES Cidade (id),
  PRIMARY KEY (idMusica, idCidade)
);

-- Table: Utilizador
DROP TABLE IF EXISTS Utilizador;
CREATE TABLE Utilizador (
  id INTEGER PRIMARY KEY,
  nome              STRING NOT NULL,
  username          STRING NOT NULL UNIQUE CHECK(LENGTH(username) >= 6 AND LENGTH(username) <= 12),
  password          STRING NOT NULL CHECK(LENGTH(password) >= 6 AND LENGTH(password) <= 12),
  fotoPerfil        BLOB,
  dataNascimento    DATE NOT NULL,
  email             STRING NOT NULL UNIQUE
);

-- Table: UtilizadorFree
DROP TABLE IF EXISTS UtilizadorFree;
CREATE TABLE UtilizadorFree (
  id              INTEGER REFERENCES Utilizador (id) PRIMARY KEY,
  tempoLimite     INTEGER NOT NULL
);

-- Table: UtilizadorPremium
DROP TABLE IF EXISTS UtilizadorPremium;
CREATE TABLE UtilizadorPremium (
  id              INTEGER PRIMARY KEY REFERENCES Utilizador (id),
  mensalidade     DOUBLE NOT NULL
);

PRAGMA foreign_keys = on;
