CREATE DATABASE modelodimensional_ejercicio2
GO

USE modelodimensional_ejercicio2
GO


CREATE TABLE dbo.Destino(
	id_destino int identity(1,1) NOT NULL,
	pais varchar(30) NOT NULL,
	PRIMARY KEY (id_destino)
)
GO

CREATE TABLE dbo.Cliente(
	id_cliente int identity(1,1) NOT NULL,
	direccion varchar(100) NULL,
	tipo varchar(10) NOT NULL,
	PRIMARY KEY (id_cliente)
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

CREATE TABLE dbo.Agencia(
	id_agencia int identity(1,1) NOT NULL,
	operador varchar(50) NOT NULL,
	PRIMARY KEY (id_agencia)
)
GO

CREATE TABLE dbo.Reserva(
	id_reserva int identity(1,1) NOT NULL,
	id_cliente int NOT NULL,
	id_agencia int NOT NULL,
	id_destino int NOT NULL,
	id_tiempo int NOT NULL,
	fecha_reserva date NOT NULL,
	fecha_viaje date NOT NULL,
	duracion_viaje int NOT NULL,
	PRIMARY KEY (id_reserva),
	FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
	FOREIGN KEY (id_agencia) REFERENCES Agencia(id_agencia),
	FOREIGN KEY (id_destino) REFERENCES Destino(id_destino),
	FOREIGN KEY (id_tiempo) REFERENCES Tiempo(id_tiempo)
)
GO