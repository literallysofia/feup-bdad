
-- Data : Pais
INSERT INTO Pais (id, nome) VALUES (1, 'United Kingdom');
INSERT INTO Pais (id, nome) VALUES (2, 'Germany');
INSERT INTO Pais (id, nome) VALUES (3, 'Russia');
INSERT INTO Pais (id, nome) VALUES (4, 'France');
INSERT INTO Pais (id, nome) VALUES (5, 'Italy');
INSERT INTO Pais (id, nome) VALUES (6, 'Argentina');
INSERT INTO Pais (id, nome) VALUES (7, 'Switzerland');
INSERT INTO Pais (id, nome) VALUES (8, 'Poland');
INSERT INTO Pais (id, nome) VALUES (9, 'Finland');
INSERT INTO Pais (id, nome) VALUES (10, 'Netherlands');
INSERT INTO Pais (id, nome) VALUES (11, 'Portugal');
INSERT INTO Pais (id, nome) VALUES (12, 'Colombia');
INSERT INTO Pais (id, nome) VALUES (13, 'Belgium');
INSERT INTO Pais (id, nome) VALUES (14, 'United States');
INSERT INTO Pais (id, nome) VALUES (15, 'Spain');
INSERT INTO Pais (id, nome) VALUES (16, 'Iceland');
INSERT INTO Pais (id, nome) VALUES (17, 'Australia');
INSERT INTO Pais (id, nome) VALUES (18, 'Japan');
INSERT INTO Pais (id, nome) VALUES (19, 'Brazil');
INSERT INTO Pais (id, nome) VALUES (20, 'China');

-- Data : Cidade
INSERT INTO Cidade (id, nome, idPais) VALUES (1, 'London', 1);
INSERT INTO Cidade (id, nome, idPais) VALUES (2, 'Birmingham', 1);
INSERT INTO Cidade (id, nome, idPais) VALUES (3, 'Sheffield', 1);
INSERT INTO Cidade (id, nome, idPais) VALUES (4, 'Berlin', 2);
INSERT INTO Cidade (id, nome, idPais) VALUES (5, 'Hamburg', 2);
INSERT INTO Cidade (id, nome, idPais) VALUES (6, 'Paris', 3);
INSERT INTO Cidade (id, nome, idPais) VALUES (7, 'Amsterdam', 10);
INSERT INTO Cidade (id, nome, idPais) VALUES (8, 'Lisbon', 11);
INSERT INTO Cidade (id, nome, idPais) VALUES (9, 'Porto', 11);
INSERT INTO Cidade (id, nome, idPais) VALUES (10, 'New York', 14);
INSERT INTO Cidade (id, nome, idPais) VALUES (11, 'Chicago', 14);
INSERT INTO Cidade (id, nome, idPais) VALUES (12, 'Los Angeles', 14);
INSERT INTO Cidade (id, nome, idPais) VALUES (13, 'New Orleans', 14);
INSERT INTO Cidade (id, nome, idPais) VALUES (14, 'Madrid', 15);
INSERT INTO Cidade (id, nome, idPais) VALUES (15, 'Barcelona', 15);
INSERT INTO Cidade (id, nome, idPais) VALUES (16, 'Reykjavik', 16);
INSERT INTO Cidade (id, nome, idPais) VALUES (17, 'Sydney', 17);
INSERT INTO Cidade (id, nome, idPais) VALUES (18, 'Melbourne', 17);
INSERT INTO Cidade (id, nome, idPais) VALUES (19, 'Tokyo', 18);
INSERT INTO Cidade (id, nome, idPais) VALUES (20, 'Beijing', 20);

-- Data : Interprete
INSERT INTO Interprete (id, nome, verificado, fotoPerfil, fotoCapa, biografia, idCidade) VALUES (1, 'Twenty One Pilots', 'true', 'https://robohash.org/optioetsint.png?size=50x50&set=set1', 'http://dummyimage.com/214x114.bmp/cc0000/ffffff', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 11);
INSERT INTO Interprete (id, nome, verificado, fotoPerfil, fotoCapa, biografia, idCidade) VALUES (2, 'Paramore', 'true', 'https://robohash.org/ullamquiaautem.png?size=50x50&set=set1', 'http://dummyimage.com/248x201.png/5fa2dd/ffffff', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 13);
INSERT INTO Interprete (id, nome, verificado, fotoPerfil, fotoCapa, biografia, idCidade) VALUES (3, 'Radiohead', 'true', 'https://robohash.org/sapientedebitisut.bmp?size=50x50&set=set1', 'http://dummyimage.com/149x107.jpg/ff4444/ffffff', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 1);
INSERT INTO Interprete (id, nome, verificado, fotoPerfil, fotoCapa, biografia, idCidade) VALUES (4, 'You Me At Six', 'true', 'https://robohash.org/autemtotamlaudantium.jpg?size=50x50&set=set1', 'http://dummyimage.com/157x241.bmp/ff4444/ffffff', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 2);
INSERT INTO Interprete (id, nome, verificado, fotoPerfil, fotoCapa, biografia, idCidade) VALUES (5, 'Oh Wonder', 'false', 'https://robohash.org/sedaspernaturad.bmp?size=50x50&set=set1', 'http://dummyimage.com/172x199.png/dddddd/000000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 5);
INSERT INTO Interprete (id, nome, verificado, fotoPerfil, fotoCapa, biografia, idCidade) VALUES (6, 'Arctic Monkeys', 'true', 'https://robohash.org/nequeeosvoluptatum.bmp?size=50x50&set=set1', 'http://dummyimage.com/134x249.png/cc0000/ffffff', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 3);
INSERT INTO Interprete (id, nome, verificado, fotoPerfil, fotoCapa, biografia, idCidade) VALUES (7, 'Ed Sheeran', 'true', 'https://robohash.org/quiarerumquos.jpg?size=50x50&set=set1', 'http://dummyimage.com/138x250.png/cc0000/ffffff', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 2);
INSERT INTO Interprete (id, nome, verificado, fotoPerfil, fotoCapa, biografia, idCidade) VALUES (8, 'Tame Impala', 'true', 'https://robohash.org/porroexquisquam.jpg?size=50x50&set=set1', 'http://dummyimage.com/182x193.png/cc0000/ffffff', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 17);
INSERT INTO Interprete (id, nome, verificado, fotoPerfil, fotoCapa, biografia, idCidade) VALUES (9, 'Panic At The Disco', 'true', 'https://robohash.org/debitissaepeaut.png?size=50x50&set=set1', 'http://dummyimage.com/112x133.bmp/ff4444/ffffff', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 10);
INSERT INTO Interprete (id, nome, verificado, fotoPerfil, fotoCapa, biografia, idCidade) VALUES (10, 'Linda Martini', 'false', 'https://robohash.org/inciduntdoloresrecusandae.jpg?size=50x50&set=set1', 'http://dummyimage.com/162x113.png/cc0000/ffffff', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 9);
INSERT INTO Interprete (id, nome, verificado, fotoPerfil, fotoCapa, biografia, idCidade) VALUES (11, 'My Chemical Romance', 'true', 'https://robohash.org/aperiamsintest.png?size=50x50&set=set1', 'http://dummyimage.com/112x162.bmp/cc0000/ffffff', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 10);
INSERT INTO Interprete (id, nome, verificado, fotoPerfil, fotoCapa, biografia, idCidade) VALUES (12, 'Alt-J', 'false', 'https://robohash.org/namdoloresquis.png?size=50x50&set=set1', 'http://dummyimage.com/198x161.bmp/cc0000/ffffff', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 18);
INSERT INTO Interprete (id, nome, verificado, fotoPerfil, fotoCapa, biografia, idCidade) VALUES (13, 'EXO', 'true', 'https://robohash.org/doloremquiarchitecto.png?size=50x50&set=set1', 'http://dummyimage.com/104x150.png/dddddd/000000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 19);
INSERT INTO Interprete (id, nome, verificado, fotoPerfil, fotoCapa, biografia, idCidade) VALUES (14, 'Fall Out Boy', 'true', 'https://robohash.org/quiadolorumunde.jpg?size=50x50&set=set1', 'http://dummyimage.com/170x164.bmp/dddddd/000000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 11);
INSERT INTO Interprete (id, nome, verificado, fotoPerfil, fotoCapa, biografia, idCidade) VALUES (15, 'Coldplay', 'true', 'https://robohash.org/cumqueisteab.bmp?size=50x50&set=set1', 'http://dummyimage.com/221x156.bmp/5fa2dd/ffffff', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 1);
INSERT INTO Interprete (id, nome, verificado, fotoPerfil, fotoCapa, biografia, idCidade) VALUES (16, 'The Weeknd', 'true', 'https://robohash.org/eospraesentiumnisi.png?size=50x50&set=set1', 'http://dummyimage.com/183x159.jpg/ff4444/ffffff', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 12);
INSERT INTO Interprete (id, nome, verificado, fotoPerfil, fotoCapa, biografia, idCidade) VALUES (17, 'Milky Chance', 'false', 'https://robohash.org/voluptatemporrolaudantium.jpg?size=50x50&set=set1', 'http://dummyimage.com/122x224.jpg/ff4444/ffffff', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 7);
INSERT INTO Interprete (id, nome, verificado, fotoPerfil, fotoCapa, biografia, idCidade) VALUES (18, 'Imagine Dragons', 'true', 'https://robohash.org/quaeratexercitationemsint.bmp?size=50x50&set=set1', 'http://dummyimage.com/237x157.bmp/dddddd/000000', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 12);
INSERT INTO Interprete (id, nome, verificado, fotoPerfil, fotoCapa, biografia, idCidade) VALUES (19, 'Remo Drive', 'false', 'https://robohash.org/etsitquibusdam.png?size=50x50&set=set1', 'http://dummyimage.com/149x184.jpg/cc0000/ffffff', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 16);
INSERT INTO Interprete (id, nome, verificado, fotoPerfil, fotoCapa, biografia, idCidade) VALUES (20, 'All Time Low', 'true', 'https://robohash.org/cumquenequenon.jpg?size=50x50&set=set1', 'http://dummyimage.com/120x206.png/ff4444/ffffff', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 12);

-- Data : Concerto
INSERT INTO Concerto (idConcerto, data, idInterprete, idCidade) VALUES (1, '02/09/2018', 1, 1);
INSERT INTO Concerto (idConcerto, data, idInterprete, idCidade) VALUES (2, '03/09/2018', 1, 2);
INSERT INTO Concerto (idConcerto, data, idInterprete, idCidade) VALUES (3, '04/01/2018', 1, 5);
INSERT INTO Concerto (idConcerto, data, idInterprete, idCidade) VALUES (4, '07/29/2017', 4, 9);
INSERT INTO Concerto (idConcerto, data, idInterprete, idCidade) VALUES (5, '10/21/2017', 9, 1);
INSERT INTO Concerto (idConcerto, data, idInterprete, idCidade) VALUES (6, '06/18/2017', 7, 5);
INSERT INTO Concerto (idConcerto, data, idInterprete, idCidade) VALUES (7, '12/29/2017', 2, 10);
INSERT INTO Concerto (idConcerto, data, idInterprete, idCidade) VALUES (8, '12/13/2017', 19, 7);
INSERT INTO Concerto (idConcerto, data, idInterprete, idCidade) VALUES (9, '10/02/2017', 9, 16);
INSERT INTO Concerto (idConcerto, data, idInterprete, idCidade) VALUES (10, '06/06/2017', 4, 1);
INSERT INTO Concerto (idConcerto, data, idInterprete, idCidade) VALUES (11, '06/08/2018', 4, 15);
INSERT INTO Concerto (idConcerto, data, idInterprete, idCidade) VALUES (12, '10/06/2017', 13, 12);
INSERT INTO Concerto (idConcerto, data, idInterprete, idCidade) VALUES (13, '06/04/2018', 7, 6);
INSERT INTO Concerto (idConcerto, data, idInterprete, idCidade) VALUES (14, '11/24/2017', 20, 2);
INSERT INTO Concerto (idConcerto, data, idInterprete, idCidade) VALUES (15, '03/02/2018', 15, 1);
INSERT INTO Concerto (idConcerto, data, idInterprete, idCidade) VALUES (16, '03/23/2018', 15, 17);
INSERT INTO Concerto (idConcerto, data, idInterprete, idCidade) VALUES (17, '06/10/2017', 7, 10);
INSERT INTO Concerto (idConcerto, data, idInterprete, idCidade) VALUES (18, '05/11/2017', 18, 1);
INSERT INTO Concerto (idConcerto, data, idInterprete, idCidade) VALUES (19, '06/03/2017', 7, 19);
INSERT INTO Concerto (idConcerto, data, idInterprete, idCidade) VALUES (20, '08/10/2017', 18, 5);

-- Data : TipoAlbum
INSERT INTO TipoAlbum (idTipoAlbum, tipoNome) VALUES (1, 'Studio');
INSERT INTO TipoAlbum (idTipoAlbum, tipoNome) VALUES (2, 'Single');
INSERT INTO TipoAlbum (idTipoAlbum, tipoNome) VALUES (3, 'Live');
INSERT INTO TipoAlbum (idTipoAlbum, tipoNome) VALUES (4, 'Soundtrack');
INSERT INTO TipoAlbum (idTipoAlbum, tipoNome) VALUES (5, 'Remix');

-- Data : Album
INSERT INTO Album (id, nome, capa, ano, idTipoAlbum, idInterprete) VALUES (1, 'Blurryface', 'https://robohash.org/optioetsint.png?size=50x50&set=set1', 2015, 1, 1);
INSERT INTO Album (id, nome, capa, ano, idTipoAlbum, idInterprete) VALUES (2, 'Brand New Eyes', 'https://robohash.org/ullamquiaautem.png?size=50x50&set=set1', 2009, 1, 2);
INSERT INTO Album (id, nome, capa, ano, idTipoAlbum, idInterprete) VALUES (3, 'OK Computer', 'https://robohash.org/sapientedebitisut.bmp?size=50x50&set=set1', 1997, 1, 3);
INSERT INTO Album (id, nome, capa, ano, idTipoAlbum, idInterprete) VALUES (4, 'Sinners Never Sleep', 'https://robohash.org/autemtotamlaudantium.jpg?size=50x50&set=set1', 2012, 1, 4);
INSERT INTO Album (id, nome, capa, ano, idTipoAlbum, idInterprete) VALUES (5, 'Night People', 'https://robohash.org/sedaspernaturad.bmp?size=50x50&set=set1', 2017, 1, 4);
INSERT INTO Album (id, nome, capa, ano, idTipoAlbum, idInterprete) VALUES (6, 'Oh Wonder', 'https://robohash.org/nequeeosvoluptatum.bmp?size=50x50&set=set1', 2015, 1, 5);
INSERT INTO Album (id, nome, capa, ano, idTipoAlbum, idInterprete) VALUES (7, 'AM', 'https://robohash.org/quiarerumquos.jpg?size=50x50&set=set1', 2013, 1, 6);
INSERT INTO Album (id, nome, capa, ano, idTipoAlbum, idInterprete) VALUES (8, 'Cornerstone', 'https://robohash.org/porroexquisquam.jpg?size=50x50&set=set1', 2009, 2, 6);
INSERT INTO Album (id, nome, capa, ano, idTipoAlbum, idInterprete) VALUES (9, 'Shape Of You', 'https://robohash.org/debitissaepeaut.png?size=50x50&set=set1', 2017, 5, 7);
INSERT INTO Album (id, nome, capa, ano, idTipoAlbum, idInterprete) VALUES (10, 'Multiply', 'https://robohash.org/inciduntdoloresrecusandae.jpg?size=50x50&set=set1', 2015, 1, 7);
INSERT INTO Album (id, nome, capa, ano, idTipoAlbum, idInterprete) VALUES (11, 'Currents', 'https://robohash.org/aperiamsintest.png?size=50x50&set=set1', 2015, 1, 8);
INSERT INTO Album (id, nome, capa, ano, idTipoAlbum, idInterprete) VALUES (12, 'A Fever You Can''t Sweat Out', 'https://robohash.org/namdoloresquis.png?size=50x50&set=set1', 2005, 1, 9);
INSERT INTO Album (id, nome, capa, ano, idTipoAlbum, idInterprete) VALUES (13, 'New Perspective', 'https://robohash.org/doloremquiarchitecto.png?size=50x50&set=set1', 2009, 4, 9);
INSERT INTO Album (id, nome, capa, ano, idTipoAlbum, idInterprete) VALUES (14, 'The Black Parade Is Dead', 'https://robohash.org/quiadolorumunde.jpg?size=50x50&set=set1', 2008, 3, 11);
INSERT INTO Album (id, nome, capa, ano, idTipoAlbum, idInterprete) VALUES (15, 'LOTTO', 'https://robohash.org/cumqueisteab.bmp?size=50x50&set=set1', 2016, 1, 13);
INSERT INTO Album (id, nome, capa, ano, idTipoAlbum, idInterprete) VALUES (16, 'X & Y', 'https://robohash.org/eospraesentiumnisi.png?size=50x50&set=set1', 2005, 1, 15);
INSERT INTO Album (id, nome, capa, ano, idTipoAlbum, idInterprete) VALUES (17, 'Nothing Personal', 'https://robohash.org/voluptatemporrolaudantium.jpg?size=50x50&set=set1', 2009, 1, 20);
INSERT INTO Album (id, nome, capa, ano, idTipoAlbum, idInterprete) VALUES (18, 'Blossom', 'https://robohash.org/quaeratexercitationemsint.bmp?size=50x50&set=set1', 2017, 1, 17);
INSERT INTO Album (id, nome, capa, ano, idTipoAlbum, idInterprete) VALUES (19, 'Starboy', 'https://robohash.org/etsitquibusdam.png?size=50x50&set=set1', 2016, 5, 16);
INSERT INTO Album (id, nome, capa, ano, idTipoAlbum, idInterprete) VALUES (20, '3WW', 'https://robohash.org/cumquenequenon.jpg?size=50x50&set=set1', 2017, 2, 12);

-- Data : Genero
INSERT INTO Genero (idGenero, nome) VALUES (1, 'Pop');
INSERT INTO Genero (idGenero, nome) VALUES (2, 'Rock');
INSERT INTO Genero (idGenero, nome) VALUES (3, 'Electronic');
INSERT INTO Genero (idGenero, nome) VALUES (4, 'K Pop');
INSERT INTO Genero (idGenero, nome) VALUES (5, 'Indie');
INSERT INTO Genero (idGenero, nome) VALUES (6, 'Alternative');
INSERT INTO Genero (idGenero, nome) VALUES (7, 'Punk');
INSERT INTO Genero (idGenero, nome) VALUES (8, 'Jazz');
INSERT INTO Genero (idGenero, nome) VALUES (9, 'Instrumental');
INSERT INTO Genero (idGenero, nome) VALUES (10, 'Hip Hop');

-- Data : Musica
INSERT INTO Musica (id, nome, duracao, reproducoes) VALUES (1, 'Stressed Out', 4, 92000000);
INSERT INTO Musica (id, nome, duracao, reproducoes) VALUES (2, 'Lane Boy', 4, 88000000);
INSERT INTO Musica (id, nome, duracao, reproducoes) VALUES (3, 'Playing God', 3, 17000000);
INSERT INTO Musica (id, nome, duracao, reproducoes) VALUES (4, 'Karma Police', 4, 73000000);
INSERT INTO Musica (id, nome, duracao, reproducoes) VALUES (5, 'No One Does It Better', 5, 6000000);
INSERT INTO Musica (id, nome, duracao, reproducoes) VALUES (6, 'Crash', 5, 7000000);
INSERT INTO Musica (id, nome, duracao, reproducoes) VALUES (7, 'Give', 3, 4000000);
INSERT INTO Musica (id, nome, duracao, reproducoes) VALUES (8, 'Do I Wanna Know', 4, 330000000);
INSERT INTO Musica (id, nome, duracao, reproducoes) VALUES (9, 'Cornerstone', 3, 17000000);
INSERT INTO Musica (id, nome, duracao, reproducoes) VALUES (10, 'Bloodstream', 5, 114000000);
INSERT INTO Musica (id, nome, duracao, reproducoes) VALUES (11, 'Let It Happen', 7, 56000000);
INSERT INTO Musica (id, nome, duracao, reproducoes) VALUES (12, 'Eventually', 5, 30000000);
INSERT INTO Musica (id, nome, duracao, reproducoes) VALUES (13, 'I Write Sins Not Tragedies', 3, 129000000);
INSERT INTO Musica (id, nome, duracao, reproducoes) VALUES (14, 'House Of Wolves', 3, 690000);
INSERT INTO Musica (id, nome, duracao, reproducoes) VALUES (15, 'Monster', 4, 20000000);
INSERT INTO Musica (id, nome, duracao, reproducoes) VALUES (16, 'Fix You', 5, 251000000);
INSERT INTO Musica (id, nome, duracao, reproducoes) VALUES (17, 'Therapy', 4, 16000000);
INSERT INTO Musica (id, nome, duracao, reproducoes) VALUES (18, 'Cocoon', 4, 47000000);
INSERT INTO Musica (id, nome, duracao, reproducoes) VALUES (19, 'Starboy', 4, 656000000);
INSERT INTO Musica (id, nome, duracao, reproducoes) VALUES (20, '3WW', 5, 4000000);

-- Data : MusicaAlbum
INSERT INTO MusicaAlbum (idMusica, idAlbum, indice) VALUES (1, 1, 2);
INSERT INTO MusicaAlbum (idMusica, idAlbum, indice) VALUES (2, 1, 6);
INSERT INTO MusicaAlbum (idMusica, idAlbum, indice) VALUES (3, 2, 3);
INSERT INTO MusicaAlbum (idMusica, idAlbum, indice) VALUES (4, 3, 6);
INSERT INTO MusicaAlbum (idMusica, idAlbum, indice) VALUES (5, 4, 5);
INSERT INTO MusicaAlbum (idMusica, idAlbum, indice) VALUES (6, 4, 7);
INSERT INTO MusicaAlbum (idMusica, idAlbum, indice) VALUES (7, 5, 10);
INSERT INTO MusicaAlbum (idMusica, idAlbum, indice) VALUES (8, 7, 1);
INSERT INTO MusicaAlbum (idMusica, idAlbum, indice) VALUES (9, 8, 1);
INSERT INTO MusicaAlbum (idMusica, idAlbum, indice) VALUES (10, 10, 7);
INSERT INTO MusicaAlbum (idMusica, idAlbum, indice) VALUES (11, 11, 1);
INSERT INTO MusicaAlbum (idMusica, idAlbum, indice) VALUES (12, 11, 5);
INSERT INTO MusicaAlbum (idMusica, idAlbum, indice) VALUES (13, 12, 10);
INSERT INTO MusicaAlbum (idMusica, idAlbum, indice) VALUES (14, 14, 9);
INSERT INTO MusicaAlbum (idMusica, idAlbum, indice) VALUES (15, 15, 3);
INSERT INTO MusicaAlbum (idMusica, idAlbum, indice) VALUES (16, 16, 4);
INSERT INTO MusicaAlbum (idMusica, idAlbum, indice) VALUES (17, 17, 12);
INSERT INTO MusicaAlbum (idMusica, idAlbum, indice) VALUES (18, 18, 9);
INSERT INTO MusicaAlbum (idMusica, idAlbum, indice) VALUES (19, 19, 1);
INSERT INTO MusicaAlbum (idMusica, idAlbum, indice) VALUES (20, 20, 1);

-- Data : Utilizador
INSERT INTO Utilizador (id, nome, username, password, fotoPerfil, dataNascimento, email) VALUES (1, 'Robin Dunn', 'rdunn0', 'Iext3VfXhhE', 'https://robohash.org/voluptatumquiquas.bmp?size=50x50&set=set1', '1993-02-26', 'rdunn0@godaddy.com');
INSERT INTO Utilizador (id, nome, username, password, fotoPerfil, dataNascimento, email) VALUES (2, 'Jacqueline Campbell', 'jcampbell1', 'lx5f6f', 'https://robohash.org/magnieteveniet.bmp?size=50x50&set=set1', '1995-10-16', 'jcampbell1@mayoclinic.com');
INSERT INTO Utilizador (id, nome, username, password, fotoPerfil, dataNascimento, email) VALUES (3, 'Roy Moreno', 'rmoreno2', 'kCOVkRNLWSa', 'https://robohash.org/enimtotamconsequatur.jpg?size=50x50&set=set1', '1998-05-10', 'rmoreno2@flickr.com');
INSERT INTO Utilizador (id, nome, username, password, fotoPerfil, dataNascimento, email) VALUES (4, 'Mark Wallace', 'mwallace3', 'MCOPMR', 'https://robohash.org/doloribusminimacum.jpg?size=50x50&set=set1', '1994-05-24', 'mwallace3@webeden.co.uk');
INSERT INTO Utilizador (id, nome, username, password, fotoPerfil, dataNascimento, email) VALUES (5, 'Stephanie Parker', 'sparker4', 'GLvu3tz', 'https://robohash.org/animieteos.png?size=50x50&set=set1', '1993-01-02', 'sparker4@free.fr');
INSERT INTO Utilizador (id, nome, username, password, fotoPerfil, dataNascimento, email) VALUES (6, 'Jesse Cook', 'jcook5', 'ry4Pcgj9idCc', 'https://robohash.org/etetmaiores.png?size=50x50&set=set1', '2000-09-17', 'jcook5@geocities.jp');
INSERT INTO Utilizador (id, nome, username, password, fotoPerfil, dataNascimento, email) VALUES (7, 'Sarah Morris', 'smorris6', 'mC1jkh', 'https://robohash.org/inciduntsuscipittempore.png?size=50x50&set=set1', '1999-02-25', 'smorris6@chicagotribune.com');
INSERT INTO Utilizador (id, nome, username, password, fotoPerfil, dataNascimento, email) VALUES (8, 'Timothy Collins', 'tcollins7', 'QBpsIhnJMH4', 'https://robohash.org/quidemquassoluta.png?size=50x50&set=set1', '1999-05-04', 'tcollins7@ebay.com');
INSERT INTO Utilizador (id, nome, username, password, fotoPerfil, dataNascimento, email) VALUES (9, 'Marilyn Taylor', 'mtaylor8', 'OEpPXNW5bMXg', 'https://robohash.org/etnobiset.jpg?size=50x50&set=set1', '2000-07-06', 'mtaylor8@cocolog-nifty.com');
INSERT INTO Utilizador (id, nome, username, password, fotoPerfil, dataNascimento, email) VALUES (10, 'Lillian Martin', 'lmartin9', '9en8zGeHqVCU', 'https://robohash.org/nullaoccaecatiet.bmp?size=50x50&set=set1', '1997-12-03', 'lmartin9@quantcast.com');
INSERT INTO Utilizador (id, nome, username, password, fotoPerfil, dataNascimento, email) VALUES (11, 'Victor Lawson', 'vlawsona', '5Bw5tdYxO', 'https://robohash.org/saepemolestiaedolor.jpg?size=50x50&set=set1', '1995-05-12', 'vlawsona@irs.gov');
INSERT INTO Utilizador (id, nome, username, password, fotoPerfil, dataNascimento, email) VALUES (12, 'Steve Edwards', 'sedwardsb', 'cI7lY4vKzm', 'https://robohash.org/debitisexpeditaet.bmp?size=50x50&set=set1', '1990-10-27', 'sedwardsb@prlog.org');
INSERT INTO Utilizador (id, nome, username, password, fotoPerfil, dataNascimento, email) VALUES (13, 'Annie Mcdonald', 'amcdonaldc', 'sQ9k8iCwZXJp', 'https://robohash.org/oditpraesentiumet.bmp?size=50x50&set=set1', '1997-08-23', 'amcdonaldc@ebay.com');
INSERT INTO Utilizador (id, nome, username, password, fotoPerfil, dataNascimento, email) VALUES (14, 'Gerald Torres', 'gtorresd', 'yNRI6M3I', 'https://robohash.org/estsintaut.png?size=50x50&set=set1', '1992-04-29', 'gtorresd@devhub.com');
INSERT INTO Utilizador (id, nome, username, password, fotoPerfil, dataNascimento, email) VALUES (15, 'Katherine Ray', 'krayea', 'sINnoYWEEXlc', 'https://robohash.org/adrecusandaeaspernatur.png?size=50x50&set=set1', '1997-08-10', 'kraye@dailymail.co.uk');
INSERT INTO Utilizador (id, nome, username, password, fotoPerfil, dataNascimento, email) VALUES (16, 'Marilyn Dixon', 'mdixonf', 'wflnuVjy78N', 'https://robohash.org/quamipsafugiat.jpg?size=50x50&set=set1', '1991-06-04', 'mdixonf@google.ru');
INSERT INTO Utilizador (id, nome, username, password, fotoPerfil, dataNascimento, email) VALUES (17, 'Marie Greene', 'mgreeneg', 'IGlAUlEKzlOH', 'https://robohash.org/ipsautaliquid.jpg?size=50x50&set=set1', '1993-01-24', 'mgreeneg@studiopress.com');
INSERT INTO Utilizador (id, nome, username, password, fotoPerfil, dataNascimento, email) VALUES (18, 'Christina Johnson', 'cjohnsonh', 'YO16MSB0D7DQ', 'https://robohash.org/ametrepudiandaequo.bmp?size=50x50&set=set1', '1999-07-17', 'cjohnsonh@nhs.uk');
INSERT INTO Utilizador (id, nome, username, password, fotoPerfil, dataNascimento, email) VALUES (19, 'Justin King', 'jkingi', 'TjA3ceO', 'https://robohash.org/eaquelaboriosammaxime.jpg?size=50x50&set=set1', '1999-03-30', 'jkingi@theglobeandmail.com');
INSERT INTO Utilizador (id, nome, username, password, fotoPerfil, dataNascimento, email) VALUES (20, 'Mary Thomas', 'mthomasj', '40sHL1utvN', 'https://robohash.org/autsapientenatus.jpg?size=50x50&set=set1', '1998-02-13', 'mthomasj@smugmug.com');

-- Data : Playlist
INSERT INTO Playlist (id, nome, imagem, duracao, descricao, idDono) VALUES (1, 'Quo Lux', 'https://robohash.org/easitnihil.jpg?size=50x50&set=set1', 176, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 1);
INSERT INTO Playlist (id, nome, imagem, duracao, descricao, idDono) VALUES (2, 'Tin', 'https://robohash.org/voluptatemvoluptatibusaspernatur.jpg?size=50x50&set=set1', 32, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 2);
INSERT INTO Playlist (id, nome, imagem, duracao, descricao, idDono) VALUES (3, 'Subin', 'https://robohash.org/cupiditatequisnon.jpg?size=50x50&set=set1', 62, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 5);
INSERT INTO Playlist (id, nome, imagem, duracao, descricao, idDono) VALUES (4, 'Voltsillam', 'https://robohash.org/estmolestiaset.png?size=50x50&set=set1', 127, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 3);
INSERT INTO Playlist (id, nome, imagem, duracao, descricao, idDono) VALUES (5, 'Subin', 'https://robohash.org/perferendisisteveniam.jpg?size=50x50&set=set1', 106, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 13);
INSERT INTO Playlist (id, nome, imagem, duracao, descricao, idDono) VALUES (6, 'Rank', 'https://robohash.org/istedoloremsit.jpg?size=50x50&set=set1', 100, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 15);
INSERT INTO Playlist (id, nome, imagem, duracao, descricao, idDono) VALUES (7, 'Vagram', 'https://robohash.org/quisestqui.jpg?size=50x50&set=set1', 172, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 18);
INSERT INTO Playlist (id, nome, imagem, duracao, descricao, idDono) VALUES (8, 'Gym', 'https://robohash.org/dignissimosvoluptatibusqui.png?size=50x50&set=set1', 124, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 2);
INSERT INTO Playlist (id, nome, imagem, duracao, descricao, idDono) VALUES (9, 'Holdlamis', 'https://robohash.org/asperioressuntfacilis.png?size=50x50&set=set1', 71, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 20);
INSERT INTO Playlist (id, nome, imagem, duracao, descricao, idDono) VALUES (10, 'Andalax', 'https://robohash.org/fugiatinexercitationem.jpg?size=50x50&set=set1', 59, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 17);
INSERT INTO Playlist (id, nome, imagem, duracao, descricao, idDono) VALUES (11, 'Namfix', 'https://robohash.org/cumconsequatureius.jpg?size=50x50&set=set1', 194, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 6);
INSERT INTO Playlist (id, nome, imagem, duracao, descricao, idDono) VALUES (12, 'Tempsoft', 'https://robohash.org/idetid.jpg?size=50x50&set=set1', 47, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 8);
INSERT INTO Playlist (id, nome, imagem, duracao, descricao, idDono) VALUES (13, 'Tresom', 'https://robohash.org/autmodiiusto.jpg?size=50x50&set=set1', 7, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 15);
INSERT INTO Playlist (id, nome, imagem, duracao, descricao, idDono) VALUES (14, 'Lotstring', 'https://robohash.org/consecteturaccusamusdolore.png?size=50x50&set=set1', 171, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 5);
INSERT INTO Playlist (id, nome, imagem, duracao, descricao, idDono) VALUES (15, 'Aerified', 'https://robohash.org/hicquoet.bmp?size=50x50&set=set1', 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 19);
INSERT INTO Playlist (id, nome, imagem, duracao, descricao, idDono) VALUES (16, 'Tampflex', 'https://robohash.org/quiquisquameum.png?size=50x50&set=set1', 74, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 7);
INSERT INTO Playlist (id, nome, imagem, duracao, descricao, idDono) VALUES (17, 'Bitwolf', 'https://robohash.org/adetdistinctio.bmp?size=50x50&set=set1', 78, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 15);
INSERT INTO Playlist (id, nome, imagem, duracao, descricao, idDono) VALUES (18, 'Random', 'https://robohash.org/omnisillumnisi.jpg?size=50x50&set=set1', 31, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 5);
INSERT INTO Playlist (id, nome, imagem, duracao, descricao, idDono) VALUES (19, 'Toughjoyfax', 'https://robohash.org/eosdebitisvoluptatem.bmp?size=50x50&set=set1', 88, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 8);
INSERT INTO Playlist (id, nome, imagem, duracao, descricao, idDono) VALUES (20, 'Voyatouch', 'https://robohash.org/ipsumcupiditateomnis.bmp?size=50x50&set=set1', 60, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id consequat tortor, a porttitor neque. Nunc faucibus congue elit, blandit cursus nulla tempor vel. Praesent condimentum elit diam, a molestie.', 15);


-- Data : MusicaPlaylist
INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (1, 17);
INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (2, 18);
INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (3, 19);
INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (4, 20);
INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (5, 4);
INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (6, 5);
INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (7, 6);
INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (8, 7);
INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (9, 8);
INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (10, 1);
INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (11, 2);
INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (12, 3);
INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (13, 4);
INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (14, 5);
INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (15, 6);
INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (16, 7);
INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (17, 8);
INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (18, 9);
INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (19, 10);
INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (20, 11);
INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (1, 12);
INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (2, 13);
INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (3, 14);
INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (4, 15);
INSERT INTO MusicaPlaylist (idMusica, idPlaylist) VALUES (5, 16);

-- Data: Top
INSERT INTO Top (idMusica, posicao, idCidade) VALUES (1, 1, 20);
INSERT INTO Top (idMusica, posicao, idCidade) VALUES (2, 4, 19);
INSERT INTO Top (idMusica, posicao, idCidade) VALUES (3, 6, 18);
INSERT INTO Top (idMusica, posicao, idCidade) VALUES (4, 8, 17);
INSERT INTO Top (idMusica, posicao, idCidade) VALUES (5, 9, 16);
INSERT INTO Top (idMusica, posicao, idCidade) VALUES (6, 30, 15);
INSERT INTO Top (idMusica, posicao, idCidade) VALUES (7, 6, 14);
INSERT INTO Top (idMusica, posicao, idCidade) VALUES (8, 40, 13);
INSERT INTO Top (idMusica, posicao, idCidade) VALUES (9, 33, 12);
INSERT INTO Top (idMusica, posicao, idCidade) VALUES (10, 66, 11);
INSERT INTO Top (idMusica, posicao, idCidade) VALUES (11, 76, 10);
INSERT INTO Top (idMusica, posicao, idCidade) VALUES (12, 10, 9);
INSERT INTO Top (idMusica, posicao, idCidade) VALUES (13, 24, 8);
INSERT INTO Top (idMusica, posicao, idCidade) VALUES (14, 21, 7);
INSERT INTO Top (idMusica, posicao, idCidade) VALUES (15, 15, 6);
INSERT INTO Top (idMusica, posicao, idCidade) VALUES (16, 16, 5);
INSERT INTO Top (idMusica, posicao, idCidade) VALUES (17, 9, 4);
INSERT INTO Top (idMusica, posicao, idCidade) VALUES (18, 7, 3);
INSERT INTO Top (idMusica, posicao, idCidade) VALUES (19, 14, 2);
INSERT INTO Top (idMusica, posicao, idCidade) VALUES (20, 20, 1);

-- Data : UtilizadorFree
INSERT INTO UtilizadorFree (id, tempoLimite) VALUES (1, 30);
INSERT INTO UtilizadorFree (id, tempoLimite) VALUES (2, 30);
INSERT INTO UtilizadorFree (id, tempoLimite) VALUES (3, 30);
INSERT INTO UtilizadorFree (id, tempoLimite) VALUES (4, 30);
INSERT INTO UtilizadorFree (id, tempoLimite) VALUES (5, 30);
INSERT INTO UtilizadorFree (id, tempoLimite) VALUES (6, 30);
INSERT INTO UtilizadorFree (id, tempoLimite) VALUES (7, 30);
INSERT INTO UtilizadorFree (id, tempoLimite) VALUES (8, 30);
INSERT INTO UtilizadorFree (id, tempoLimite) VALUES (9, 30);
INSERT INTO UtilizadorFree (id, tempoLimite) VALUES (10, 30);

-- Data : UtilizadorPremium
INSERT INTO UtilizadorPremium (id, mensalidade) VALUES (11, '9,99');
INSERT INTO UtilizadorPremium (id, mensalidade) VALUES (12, '11,99');
INSERT INTO UtilizadorPremium (id, mensalidade) VALUES (13, '10,99');
INSERT INTO UtilizadorPremium (id, mensalidade) VALUES (14, '6,99');
INSERT INTO UtilizadorPremium (id, mensalidade) VALUES (15, '9,99');
INSERT INTO UtilizadorPremium (id, mensalidade) VALUES (16, '7,99');
INSERT INTO UtilizadorPremium (id, mensalidade) VALUES (17, '9,99');
INSERT INTO UtilizadorPremium (id, mensalidade) VALUES (18, '8,99');
INSERT INTO UtilizadorPremium (id, mensalidade) VALUES (19, '6,99');
INSERT INTO UtilizadorPremium (id, mensalidade) VALUES (20, '11,99');

-- Data : Mensagem
INSERT INTO Mensagem (id, conteudo, dataEnvio, idEmissor, idRecetor) VALUES (1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '01/06/2017',1,20);
INSERT INTO Mensagem (id, conteudo, dataEnvio, idEmissor, idRecetor) VALUES (2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '07/15/2016',2,19);
INSERT INTO Mensagem (id, conteudo, dataEnvio, idEmissor, idRecetor) VALUES (3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '08/13/2016',3,18);
INSERT INTO Mensagem (id, conteudo, dataEnvio, idEmissor, idRecetor) VALUES (4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '10/03/2016',4,17);
INSERT INTO Mensagem (id, conteudo, dataEnvio, idEmissor, idRecetor) VALUES (5, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '09/03/2016',5,16);
INSERT INTO Mensagem (id, conteudo, dataEnvio, idEmissor, idRecetor) VALUES (6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '10/24/2016',6,15);
INSERT INTO Mensagem (id, conteudo, dataEnvio, idEmissor, idRecetor) VALUES (7, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '02/17/2017',7,14);
INSERT INTO Mensagem (id, conteudo, dataEnvio, idEmissor, idRecetor) VALUES (8, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '12/26/2016',8,13);
INSERT INTO Mensagem (id, conteudo, dataEnvio, idEmissor, idRecetor) VALUES (9, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '10/01/2016',9,12);
INSERT INTO Mensagem (id, conteudo, dataEnvio, idEmissor, idRecetor) VALUES (10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '11/15/2016',10,11);
INSERT INTO Mensagem (id, conteudo, dataEnvio, idEmissor, idRecetor) VALUES (11, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '10/29/2016',11,10);
INSERT INTO Mensagem (id, conteudo, dataEnvio, idEmissor, idRecetor) VALUES (12, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '11/06/2016',12,9);
INSERT INTO Mensagem (id, conteudo, dataEnvio, idEmissor, idRecetor) VALUES (13, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '10/19/2016',13,8);
INSERT INTO Mensagem (id, conteudo, dataEnvio, idEmissor, idRecetor) VALUES (14, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '10/26/2016',14,7);
INSERT INTO Mensagem (id, conteudo, dataEnvio, idEmissor, idRecetor) VALUES (15, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '05/24/2016',15,6);
INSERT INTO Mensagem (id, conteudo, dataEnvio, idEmissor, idRecetor) VALUES (16, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '04/11/2016',16,5);
INSERT INTO Mensagem (id, conteudo, dataEnvio, idEmissor, idRecetor) VALUES (17, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '10/27/2016',17,4);
INSERT INTO Mensagem (id, conteudo, dataEnvio, idEmissor, idRecetor) VALUES (18, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '02/23/2017',18,3);
INSERT INTO Mensagem (id, conteudo, dataEnvio, idEmissor, idRecetor) VALUES (19, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '12/01/2016',19,2);
INSERT INTO Mensagem (id, conteudo, dataEnvio, idEmissor, idRecetor) VALUES (20, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '09/16/2016',20,1);


-- Data : SeguePlaylist
INSERT INTO SeguePlaylist (idUser, idPlaylist) VALUES (1, 20);
INSERT INTO SeguePlaylist (idUser, idPlaylist) VALUES (2, 19);
INSERT INTO SeguePlaylist (idUser, idPlaylist) VALUES (3, 18);
INSERT INTO SeguePlaylist (idUser, idPlaylist) VALUES (4, 17);
INSERT INTO SeguePlaylist (idUser, idPlaylist) VALUES (5, 16);
INSERT INTO SeguePlaylist (idUser, idPlaylist) VALUES (6, 15);
INSERT INTO SeguePlaylist (idUser, idPlaylist) VALUES (7, 14);
INSERT INTO SeguePlaylist (idUser, idPlaylist) VALUES (8, 13);
INSERT INTO SeguePlaylist (idUser, idPlaylist) VALUES (9, 12);
INSERT INTO SeguePlaylist (idUser, idPlaylist) VALUES (10, 11);
INSERT INTO SeguePlaylist (idUser, idPlaylist) VALUES (11, 10);
INSERT INTO SeguePlaylist (idUser, idPlaylist) VALUES (12, 9);
INSERT INTO SeguePlaylist (idUser, idPlaylist) VALUES (13, 8);
INSERT INTO SeguePlaylist (idUser, idPlaylist) VALUES (14, 7);
INSERT INTO SeguePlaylist (idUser, idPlaylist) VALUES (15, 6);
INSERT INTO SeguePlaylist (idUser, idPlaylist) VALUES (16, 5);
INSERT INTO SeguePlaylist (idUser, idPlaylist) VALUES (17, 4);
INSERT INTO SeguePlaylist (idUser, idPlaylist) VALUES (18, 3);
INSERT INTO SeguePlaylist (idUser, idPlaylist) VALUES (19, 2);
INSERT INTO SeguePlaylist (idUser, idPlaylist) VALUES (20, 1);

-- Data : SegueUtilizador
INSERT INTO SegueUtilizador (idUser, idUserSeguido) VALUES (1, 20);
INSERT INTO SegueUtilizador (idUser, idUserSeguido) VALUES (2, 19);
INSERT INTO SegueUtilizador (idUser, idUserSeguido) VALUES (3, 18);
INSERT INTO SegueUtilizador (idUser, idUserSeguido) VALUES (4, 17);
INSERT INTO SegueUtilizador (idUser, idUserSeguido) VALUES (5, 16);
INSERT INTO SegueUtilizador (idUser, idUserSeguido) VALUES (6, 15);
INSERT INTO SegueUtilizador (idUser, idUserSeguido) VALUES (7, 14);
INSERT INTO SegueUtilizador (idUser, idUserSeguido) VALUES (8, 13);
INSERT INTO SegueUtilizador (idUser, idUserSeguido) VALUES (9, 12);
INSERT INTO SegueUtilizador (idUser, idUserSeguido) VALUES (10, 11);
INSERT INTO SegueUtilizador (idUser, idUserSeguido) VALUES (11, 10);
INSERT INTO SegueUtilizador (idUser, idUserSeguido) VALUES (12, 9);
INSERT INTO SegueUtilizador (idUser, idUserSeguido) VALUES (13, 8);
INSERT INTO SegueUtilizador (idUser, idUserSeguido) VALUES (14, 7);
INSERT INTO SegueUtilizador (idUser, idUserSeguido) VALUES (15, 6);
INSERT INTO SegueUtilizador (idUser, idUserSeguido) VALUES (16, 5);
INSERT INTO SegueUtilizador (idUser, idUserSeguido) VALUES (17, 4);
INSERT INTO SegueUtilizador (idUser, idUserSeguido) VALUES (18, 3);
INSERT INTO SegueUtilizador (idUser, idUserSeguido) VALUES (19, 2);
INSERT INTO SegueUtilizador (idUser, idUserSeguido) VALUES (20, 1);

-- Data : SegueInterprete
INSERT INTO SegueInterprete (idUser, idInterprete) VALUES (1, 1);
INSERT INTO SegueInterprete (idUser, idInterprete) VALUES (2, 20);
INSERT INTO SegueInterprete (idUser, idInterprete) VALUES (3, 20);
INSERT INTO SegueInterprete (idUser, idInterprete) VALUES (4, 1);
INSERT INTO SegueInterprete (idUser, idInterprete) VALUES (5, 16);
INSERT INTO SegueInterprete (idUser, idInterprete) VALUES (6, 20);
INSERT INTO SegueInterprete (idUser, idInterprete) VALUES (7, 14);
INSERT INTO SegueInterprete (idUser, idInterprete) VALUES (8, 13);
INSERT INTO SegueInterprete (idUser, idInterprete) VALUES (9, 12);
INSERT INTO SegueInterprete (idUser, idInterprete) VALUES (10, 11);
INSERT INTO SegueInterprete (idUser, idInterprete) VALUES (11, 4);
INSERT INTO SegueInterprete (idUser, idInterprete) VALUES (12, 9);
INSERT INTO SegueInterprete (idUser, idInterprete) VALUES (13, 8);
INSERT INTO SegueInterprete (idUser, idInterprete) VALUES (14, 7);
INSERT INTO SegueInterprete (idUser, idInterprete) VALUES (15, 7);
INSERT INTO SegueInterprete (idUser, idInterprete) VALUES (16, 7);
INSERT INTO SegueInterprete (idUser, idInterprete) VALUES (17, 4);
INSERT INTO SegueInterprete (idUser, idInterprete) VALUES (18, 3);
INSERT INTO SegueInterprete (idUser, idInterprete) VALUES (19, 2);
INSERT INTO SegueInterprete (idUser, idInterprete) VALUES (20, 1);

-- Data : TipoDispositivo
INSERT INTO TipoDispositivo (idTipoDispositivo, tipoNome) VALUES (1, 'Laptop');
INSERT INTO TipoDispositivo (idTipoDispositivo, tipoNome) VALUES (2, 'Phone');
INSERT INTO TipoDispositivo (idTipoDispositivo, tipoNome) VALUES (3, 'Tablet');

-- Data : Dispositivo
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (1, 'Dunn', 2, 1);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (2, 'Campbell', 2, 2);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (3, 'Roy', 3, 3);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (4, 'Wallace', 2, 4);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (5, 'Steph', 2, 5);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (6, 'Cook', 2, 6);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (7, 'Sarah', 3, 7);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (8, 'Timothy', 3, 8);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (9, 'Marilyn', 3, 9);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (10, 'Lillian', 2, 10);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (11, 'Lawson', 1, 11);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (12, 'Stevie', 1, 12);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (13, 'Mcdonald', 2, 13);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (14, 'Gerald', 2, 14);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (15, 'Katherine', 1, 15);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (16, 'Dixon', 2, 16);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (17, 'Greene', 1, 17);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (18, 'Christina', 3, 18);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (19, 'King', 3, 19);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (20, 'Mary', 2, 20);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (21, 'DunnMac', 1, 1);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (22, 'CampbPC', 1, 2);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (23, 'StephPC', 1, 5);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (24, 'Timomac', 1, 8);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (25, 'LiLaptop', 1, 10);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (26, 'StevMac', 1, 12);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (27, 'GeraldPC', 1, 14);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (28, 'KathMac', 1, 15);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (29, 'GreenPhone', 2, 17);
INSERT INTO Dispositivo (idDispositivo, nome, idTipoDispositivo, idUser) VALUES (30, 'MaryMac', 1, 20);
