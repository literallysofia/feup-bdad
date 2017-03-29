--
-- File generated with SQLiteStudio v3.1.1 on qua mar 29 16:03:34 2017
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Cidade
CREATE TABLE Cidade (
    id     INTEGER PRIMARY KEY,
    idPaís INTEGER REFERENCES País (id) 
                   NOT NULL
);


-- Table: Concerto
CREATE TABLE Concerto (
    idConcerto   INTEGER PRIMARY KEY,
    data         DATE    NOT NULL,
    idIntérprete INTEGER REFERENCES Intérprete (id) 
                         NOT NULL,
    idCidade     INTEGER REFERENCES Cidade (id) 
                         NOT NULL
);


-- Table: Dispositvo
CREATE TABLE Dispositvo (
    idDispositivo     INTEGER PRIMARY KEY,
    nome              STRING  NOT NULL,
    idTipoDispositivo INTEGER REFERENCES TipoDispositivo (idTipoDispositivo) 
                              NOT NULL,
    idUser            INTEGER REFERENCES Utilizador (id) 
                              NOT NULL
);


-- Table: Envia
CREATE TABLE Envia (
    id     INTEGER PRIMARY KEY
                   REFERENCES Mensagem (conteúdo),
    idUser INTEGER REFERENCES Utilizador (id) 
                   NOT NULL
);


-- Table: Género
CREATE TABLE Género (
    idGénero INTEGER PRIMARY KEY,
    nome     STRING  NOT NULL
                     UNIQUE
);


-- Table: Intérprete
CREATE TABLE Intérprete (
    id         INTEGER PRIMARY KEY,
    nome       STRING  NOT NULL
                       UNIQUE,
    verificado BOOLEAN NOT NULL,
    fotoPerfil,
    fotoCapa,
    biografia  STRING,
    idCidade   INTEGER REFERENCES Cidade (id) 
                       NOT NULL
);


-- Table: Mensagem
CREATE TABLE Mensagem (
    id        INTEGER PRIMARY KEY,
    conteúdo  STRING  NOT NULL,
    dataEnvio DATE    NOT NULL
);


-- Table: Música
CREATE TABLE Música (
    id          INTEGER PRIMARY KEY,
    nome        STRING  NOT NULL,
    duração     TIME    NOT NULL,
    reproduções INTEGER NOT NULL
);


-- Table: MúsicaAlbum
CREATE TABLE MúsicaAlbum (
    idMúsica INTEGER PRIMARY KEY
                     REFERENCES Música (id),
    idAlbum  INTEGER REFERENCES Álbum (id) 
                     NOT NULL,
    indice   INTEGER NOT NULL
);


-- Table: MúsicaPlaylist
CREATE TABLE MúsicaPlaylist (
    idMusica           REFERENCES Música (id) 
                       PRIMARY KEY,
    idPlaylist INTEGER REFERENCES Playlist (id) 
                       NOT NULL
);


-- Table: País
CREATE TABLE País (
    id   INTEGER PRIMARY KEY,
    nome STRING  UNIQUE
                 NOT NULL
);


-- Table: Playlist
CREATE TABLE Playlist (
    id        INTEGER PRIMARY KEY,
    nome      STRING  NOT NULL,
    imagem,
    duração   TIME    NOT NULL,
    descrição STRING,
    idDono    INTEGER REFERENCES Utilizador (id) 
                      NOT NULL
);


-- Table: Recebe
CREATE TABLE Recebe (
    id     INTEGER PRIMARY KEY
                   REFERENCES Mensagem (id) 
                   NOT NULL,
    idUser INTEGER REFERENCES Utilizador (id) 
                   NOT NULL
);


-- Table: SegueIntérprete
CREATE TABLE SegueIntérprete (
    idUser       INTEGER PRIMARY KEY
                         REFERENCES Utilizador (id),
    idIntérprete INTEGER REFERENCES Intérprete (id) 
                         NOT NULL
);


-- Table: SeguePlaylist
CREATE TABLE SeguePlaylist (
    idUser     INTEGER REFERENCES Utilizador (id) 
                       PRIMARY KEY,
    idPlaylist INTEGER REFERENCES Playlist (id) 
                       NOT NULL
);


-- Table: SegueUtilizador
CREATE TABLE SegueUtilizador (
    idUser        INTEGER PRIMARY KEY
                          REFERENCES Utilizador (id),
    idUserSeguido INTEGER NOT NULL
                          REFERENCES Utilizador (id) 
);


-- Table: TipoDispositivo
CREATE TABLE TipoDispositivo (
    idTipoDispositivo INTEGER PRIMARY KEY,
    tipoNome          STRING  NOT NULL
                              UNIQUE
);


-- Table: TipoÁlbum
CREATE TABLE TipoÁlbum (
    idTipoAlbum INTEGER PRIMARY KEY,
    tipoNome    STRING  NOT NULL
                        UNIQUE
);


-- Table: Top
CREATE TABLE Top (
    idMúsica INTEGER REFERENCES Música (id) 
                     PRIMARY KEY,
    posição  INTEGER NOT NULL,
    idCidade INTEGER REFERENCES Cidade (id) 
);


-- Table: Utilizador
CREATE TABLE Utilizador (
    id             INTEGER PRIMARY KEY,
    nome           STRING  NOT NULL,
    username       STRING  NOT NULL,
    password       STRING  NOT NULL,
    fotoPerfil,
    dataNascimento DATE    NOT NULL,
    email          STRING  NOT NULL,
    idade          INTEGER NOT NULL
);


-- Table: UtilizadorFree
CREATE TABLE UtilizadorFree (
    id          INTEGER REFERENCES Utilizador (id) 
                        PRIMARY KEY,
    tempoLimite INTEGER NOT NULL
);


-- Table: UtilizadorPremium
CREATE TABLE UtilizadorPremium (
    id          INTEGER PRIMARY KEY
                        REFERENCES Utilizador (id),
    mensalidade DOUBLE  NOT NULL
);


-- Table: Álbum
CREATE TABLE Álbum (
    id           INTEGER PRIMARY KEY,
    nome         STRING  NOT NULL,
    capa                 NOT NULL,
    ano          INTEGER NOT NULL,
    idTipoAlbum  INTEGER REFERENCES TipoÁlbum (idTipoAlbum) 
                         NOT NULL,
    idIntérprete INTEGER REFERENCES Intérprete (id) 
                         NOT NULL
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
