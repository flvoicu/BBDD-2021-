CREATE TABLE pais(
  idPais INT,
  nombre VARCHAR(20),
  nºCLubs int,
  CONSTRAINT PK_idPais PRIMARY KEY(idPais)
  );
  
CREATE TABLE participantes(
  nºAsociado INT
  nombre VARCHAR(20),
  direccion VARChaR(20),
  telefono INT,
  campParticip INT,
  idPais int,
  constraint PK_nAsociado PRIMARY KEY(nºAsociado),
  CONSTRAINT FK_idPais_Pais FOREIGN KEY(idPais) REFERENCES pais
  );
  
CREATE TABLE arbitro(
    nºAsociado INT
  constraint PK_nAsociado PRIMARY KEY(nºAsociado)
  );

CREATE TABLE jugador(
    nºAsociado INT,
  	nivel int CHECK (1-10),
  constraint PK_nAsociado PRIMARY KEY(nºAsociado)
  );
  
CREATE TABLE partida(
  codPartida Int,
  jornada Date,
  nºAsociado INT
  idSala int,
  constraint PK_codPart PRIMARY KEY(codPartida),
  CONSTRAINT FK_numAsociado FOREIGN KEY(nºAsociado) REFERENCES participantes
  );
  
create TABLE jueganBlancas(
  idBlancas INT,
  codPartida INT,
  nºAsociado int,
  constraint PK_idBlancas PRIMARY KEY(idBlancas),
  CONSTRAINT FK_codPart FOREIGN KEY(codPartida) REFERENCES partida,
  CONSTRAINT FK_numAsociado FOREIGN KEY(nºAsociado) REFERENCES participantes
  );
  
create TABLE jueganNegras(
  idNegras INT,
  codPartida INT,
  nºAsociado int,
  constraint PK_idNegras PRIMARY KEY(idNegras),
  CONSTRAINT FK_codPart FOREIGN KEY(codPartida) REFERENCES partida,
  CONSTRAINT FK_numAsociado FOREIGN KEY(nºAsociado) REFERENCES participantes
  );

CREATE TABLE movimientos(
  idMovimiento int,
  codPart INT,
  comentarios varchar(50),
  jugadas varchar(50),
  constraint PK_idMovimientos PRIMARY KEY(idMovimientos),
  CONSTRAINT FK_codPart FOREIGN KEY(codPartida) REFERENCES partida
  );
  
CREATE TABLE hotel(
  idHoter int,
  nombre varchar(20),
  direccion varchar(20),
  telefono int,
  constraint PK_idHoter PRIMARY KEY(idHotel)
  );

CREATE TABLE seAloja(
  idSeAloja INT,
  nºAsociado int,
  idHotel int,
  f-inic date,
  f-fin date,
  constraint PK_idSeAloja PRIMARY KEY(idSeAloja),
  CONSTRAINT FK_numAsociado FOREIGN KEY(nºAsociado) REFERENCES participantes,
  CONSTRAINT FK_idHoter FOREIGN KEY(idHotel) REFERENCES hotel
  );
  
CREATE TABLE salas(
  idSala int,
  idHotel int,
  capacidad int,
  medios varchar(20),
  constraint PK_idSala PRIMARY KEY(idSala),
  CONSTRAINT FK_idHoter FOREIGN KEY(idHotel) REFERENCES hotel
  );
  
create TABLE seCelebra(
  idCelebra int, 
  nºEntradasVendidas int,
  idSala int,
  codPartida int,
  constraint PK_idCelebra PRIMARY KEY(idCelebra),
  CONSTRAINT FK_idSala FOREIGN KEY(idSala) REFERENCES salas,
  CONSTRAINT FK_codPart FOREIGN KEY(codPartida) REFERENCES partida
  );
  
 
  

  