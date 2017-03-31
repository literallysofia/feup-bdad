PRAGMA foreign_keys = on;
BEGIN TRANSACTION;

DROP TABLE IF EXISTS Album;
DROP TABLE IF EXISTS Cidade;
DROP TABLE IF EXISTS Concerto;
DROP TABLE IF EXISTS Dispositivo;
DROP TABLE IF EXISTS Envia;
DROP TABLE IF EXISTS Genero;
DROP TABLE IF EXISTS Interprete;
DROP TABLE IF EXISTS Mensagem;
DROP TABLE IF EXISTS Musica;
DROP TABLE IF EXISTS MusicaAlbum;
DROP TABLE IF EXISTS MusicaPlaylist;
DROP TABLE IF EXISTS Pais;
DROP TABLE IF EXISTS Playlist;
DROP TABLE IF EXISTS Recebe;
DROP TABLE IF EXISTS SegueInterprete;
DROP TABLE IF EXISTS SeguePlaylist;
DROP TABLE IF EXISTS SegueUtilizador;
DROP TABLE IF EXISTS TipoAlbum;
DROP TABLE IF EXISTS TipoDispositivo;
DROP TABLE IF EXISTS Top;
DROP TABLE IF EXISTS Utilizador;
DROP TABLE IF EXISTS UtilizadorFree;
DROP TABLE IF EXISTS UtilizadorPremium;

-- Table: Album
CREATE TABLE Album (
  id INTEGER PRIMARY KEY,
  nome STRING NOT NULL,
  capa BLOB NOT NULL,
  ano INTEGER NOT NULL CHECK(ano > 1920),
  idTipoAlbum INTEGER REFERENCES TipoAlbum (idTipoAlbum) NOT NULL,
  idInterprete INTEGER REFERENCES Interprete (id) NOT NULL
);

-- Table: Cidade
CREATE TABLE Cidade (
  id INTEGER PRIMARY KEY,
  nome STRING NOT NULL,
  idPais INTEGER REFERENCES Pais (id) NOT NULL
);

-- Table: Concerto
CREATE TABLE Concerto (
  idConcerto INTEGER PRIMARY KEY,
  data DATE NOT NULL,
  idInterprete INTEGER REFERENCES Interprete (id) NOT NULL,
  idCidade INTEGER REFERENCES Cidade (id) NOT NULL
);

-- Table: Dispositivo
CREATE TABLE Dispositivo (
  idDispositivo INTEGER PRIMARY KEY,
  nome STRING NOT NULL,
  idTipoDispositivo INTEGER REFERENCES TipoDispositivo (idTipoDispositivo) NOT NULL,
  idUser INTEGER REFERENCES Utilizador (id) NOT NULL
);

-- Table: Envia
CREATE TABLE Envia (
  id INTEGER REFERENCES Mensagem (conteudo),
  idUser INTEGER REFERENCES Utilizador (id) NOT NULL,
  PRIMARY KEY (id, idUser)
);

-- Table: Genero
CREATE TABLE Genero (
  idGenero INTEGER PRIMARY KEY,
  nome STRING NOT NULL UNIQUE
);

-- Table: Interprete
CREATE TABLE Interprete (
  id INTEGER PRIMARY KEY,
  nome STRING NOT NULL UNIQUE,
  verificado BOOLEAN NOT NULL,
  fotoPerfil BLOB,
  fotoCapa BLOB,
  biografia STRING,
  idCidade INTEGER REFERENCES Cidade (id) NOT NULL
);

-- Table: Mensagem
CREATE TABLE Mensagem (
  id INTEGER PRIMARY KEY,
  conteudo STRING NOT NULL CHECK(LENGTH(conteudo) <= 140),
  dataEnvio DATE NOT NULL
);

-- Table: Musica
CREATE TABLE Musica (
  id INTEGER PRIMARY KEY,
  nome STRING NOT NULL,
  duracao TIME NOT NULL,
  reproducoes INTEGER NOT NULL,
  idGenero INTEGER REFERENCES Genero (idGenero) NOT NULL
);

-- Table: MusicaAlbum
CREATE TABLE MusicaAlbum (
  idMusica INTEGER PRIMARY KEY REFERENCES Musica (id),
  idAlbum INTEGER REFERENCES Album (id) NOT NULL,
  indice INTEGER NOT NULL
);

-- Table: MusicaPlaylist
CREATE TABLE MusicaPlaylist (
  idMusica REFERENCES Musica (id),
  idPlaylist INTEGER REFERENCES Playlist (id) NOT NULL,
  PRIMARY KEY (idMusica, idPlaylist)
);

-- Table: Pais
CREATE TABLE Pais (
  id INTEGER PRIMARY KEY,
  nome STRING UNIQUE NOT NULL
);

-- Table: Playlist
CREATE TABLE Playlist (
  id INTEGER PRIMARY KEY,
  nome STRING NOT NULL,
  imagem BLOB,
  duracao TIME NOT NULL,
  descricao STRING,
  idDono INTEGER REFERENCES Utilizador (id) NOT NULL
);

-- Table: Recebe
CREATE TABLE Recebe (
  id INTEGER REFERENCES Mensagem (id) NOT NULL,
  idUser INTEGER REFERENCES Utilizador (id) NOT NULL,
  PRIMARY KEY (id, idUser)
);

-- Table: SegueInterprete
CREATE TABLE SegueInterprete (
  idUser INTEGER REFERENCES Utilizador (id) PRIMARY KEY,
  idInterprete INTEGER REFERENCES Interprete (id) NOT NULL
);

-- Table: SeguePlaylist
CREATE TABLE SeguePlaylist (
  idUser INTEGER REFERENCES Utilizador (id) PRIMARY KEY,
  idPlaylist INTEGER REFERENCES Playlist (id) NOT NULL
);

-- Table: SegueUtilizador
CREATE TABLE SegueUtilizador (
  idUser INTEGER PRIMARY KEY REFERENCES Utilizador (id),
  idUserSeguido INTEGER NOT NULL REFERENCES Utilizador (id)
);

-- Table: TipoAlbum
CREATE TABLE TipoAlbum (
  idTipoAlbum INTEGER PRIMARY KEY,
  tipoNome STRING NOT NULL UNIQUE
);

-- Table: TipoDispositivo
CREATE TABLE TipoDispositivo (
  idTipoDispositivo INTEGER PRIMARY KEY,
  tipoNome STRING NOT NULL UNIQUE
);

-- Table: Top
CREATE TABLE Top (
  idMusica INTEGER REFERENCES Musica (id),
  posicao INTEGER NOT NULL CHECK(posicao <= 100),
  idCidade INTEGER REFERENCES Cidade (id),
  PRIMARY KEY (idMusica, idCidade)
);

-- Table: Utilizador
CREATE TABLE Utilizador (
  id INTEGER PRIMARY KEY,
  nome STRING NOT NULL,
  username STRING NOT NULL CHECK(LENGTH(username) >= 6 AND LENGTH(username) <= 12),
  password STRING NOT NULL CHECK(LENGTH(password) >= 6 AND LENGTH(password) <= 12),
  fotoPerfil BLOB,
  dataNascimento DATE NOT NULL,
  email STRING NOT NULL
);

-- Table: UtilizadorFree
CREATE TABLE UtilizadorFree (
  id INTEGER REFERENCES Utilizador (id) PRIMARY KEY,
  tempoLimite INTEGER NOT NULL
);

-- Table: UtilizadorPremium
CREATE TABLE UtilizadorPremium (
  id INTEGER PRIMARY KEY REFERENCES Utilizador (id),
  mensalidade DOUBLE NOT NULL
);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
