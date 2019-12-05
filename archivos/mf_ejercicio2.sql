CREATE DATABASE modelofisico_ejercicio2
GO

USE modelofisico_ejercicio2
GO

CREATE TABLE dbo.Pais(
	Id int identity(1,1) NOT NULL,
	Pais varchar(30) NOT NULL,
	PRIMARY KEY (Id)
)
GO

CREATE TABLE dbo.Destino(
	Id int identity(1,1) NOT NULL,
	Destino varchar(100) NOT NULL,
	PaisId int NOT NULL,
	PRIMARY KEY (Id),
	FOREIGN KEY (PaisId) REFERENCES Pais(Id)
)
GO

CREATE TABLE dbo.Viaje(
	Id int identity(1,1) NOT NULL,
	Viaje varchar(30) NOT NULL,
	Decripcion varchar(250) NOT NULL,
	DestinoId int NOT NULL,
	PRIMARY KEY (Id),
	FOREIGN KEY (DestinoId) REFERENCES Destino(Id)
)
GO

CREATE TABLE dbo.Tipo(
	Id int identity(1,1) NOT NULL,
	Tipo varchar(20) NOT NULL,
	PRIMARY KEY (Id)
)
GO


CREATE TABLE dbo.Cliente(
	Id int identity(1,1) NOT NULL,
	Cliente varchar(100) NOT NULL,
	Direccion varchar(250) NOT NULL,
	TipoId int NOT NULL,
	PRIMARY KEY (Id),
	FOREIGN KEY (TipoId) REFERENCES Tipo(Id)
)
GO


CREATE TABLE dbo.AgenciaViaje(
	Id int identity(1,1) NOT NULL,
	AgenciaViaje varchar(30) NOT NULL,
	PRIMARY KEY (Id)
)
GO


CREATE TABLE dbo.Operador(
	Id int identity(1,1) NOT NULL,
	Operador varchar(30) NOT NULL,
	AgenciaViajeId int NOT NULL,
	PRIMARY KEY (Id),
	FOREIGN KEY (AgenciaViajeId) REFERENCES AgenciaViaje(Id)
)
GO


CREATE TABLE dbo.Reserva(
	Id int identity(1,1) NOT NULL,
	ClienteId int NOT NULL,
	Fecha date NOT NULL,
	AgenciaViajeId int NOT NULL,
	ViajeId int NOT NULL,
	PRIMARY KEY (Id),
	FOREIGN KEY (ClienteId) REFERENCES Cliente(Id),
	FOREIGN KEY (AgenciaViajeId) REFERENCES AgenciaViaje(Id),
	FOREIGN KEY (ViajeId) REFERENCES Viaje(Id)
)
GO