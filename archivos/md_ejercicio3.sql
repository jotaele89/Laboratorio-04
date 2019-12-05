CREATE DATABASE modelodimensional_ejercicio3
GO

USE modelodimensional_ejercicio3
GO

CREATE TABLE dbo.Responsable(
	id_responsable int identity(1,1) NOT NULL,
	empresa varchar(50) NOT NULL,
	PRIMARY KEY (id_responsable)
)
GO

CREATE TABLE dbo.Cliente(
	id_cliente int identity(1,1) NOT NULL,
	telefono varchar(9) NOT NULL,
	PRIMARY KEY (id_cliente)
)
GO

CREATE TABLE dbo.Localidad(
	id_localidad int identity(1,1) NOT NULL,
	localidad varchar(150) NOT NULL,
	pais varchar(30) NOT NULL,
	PRIMARY KEY (id_localidad)
)
GO

CREATE TABLE dbo.Tiempo(
	id_tiempo int identity(1,1) NOT NULL,
	dia int NOT NULL,
	mes int NOT NULL,
	ano int NOT NULL,
	PRIMARY KEY (id_tiempo)
)
GO

CREATE TABLE dbo.Proyecto(
	id_proyecto int identity(1,1) NOT NULL,
	id_cliente int NOT NULL,
	id_localidad int NOT NULL,
	id_responsable int NOT NULL,
	id_tiempo int NOT NULL,
	costo int NOT NULL,
	fecha_inicio date NOT NULL,
	fecha_termino date NOT NULL,
	duracion int NOT NULL,
	PRIMARY KEY (id_proyecto),
	FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
	FOREIGN KEY (id_localidad) REFERENCES Localidad(id_localidad),
	FOREIGN KEY (id_responsable) REFERENCES Responsable(id_responsable),
	FOREIGN KEY (id_tiempo) REFERENCES Tiempo(id_tiempo),
)
GO