CREATE DATABASE modelofisico_ejercicio3
GO

USE modelofisico_ejercicio3
GO

CREATE TABLE dbo.Empresa(
	IdEmpresa int identity(1,1) NOT NULL,
	Responsable varchar(30) NOT NULL,
	PRIMARY KEY (IdEmpresa)
)
GO

CREATE TABLE dbo.Responsable(
	IdResponsable int identity(1,1) NOT NULL,
	Responsable varchar(30) NOT NULL,
	IdEmpresa int not null,
	PRIMARY KEY (IdEmpresa),
	FOREIGN KEY (IdEmpresa) REFERENCES Empresa(IdEmpresa)

)
GO

CREATE TABLE dbo.Cliente(
	IdCliente int identity(1,1) NOT NULL,
	NombreCliente varchar(100) NULL,
	Telefono varchar(10) NOT NULL,
	PRIMARY KEY (IdCliente)
)
GO

CREATE TABLE dbo.Proyecto(
	IdProyecto int identity(1,1) NOT NULL,
	Proyecto varchar(30) NOT NULL,
	IdCliente int not null,
	PRIMARY KEY (IdProyecto),
	FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente)

)
GO

CREATE TABLE dbo.Pais(
	IdPais int identity(1,1) NOT NULL,
	Pais varchar(30) NOT NULL,
	PRIMARY KEY (IdPais)
)
GO

CREATE TABLE dbo.Localidad(
	IdLocalidad int identity(1,1) NOT NULL,
	Localidad varchar(30) NOT NULL,
	IdPais int NOt NULL,
	PRIMARY KEY (IdLocalidad),
	FOREIGN KEY (IdPais) REFERENCES Pais(IdPais)
)
GO

CREATE TABLE dbo.PaqueteTrabajo(
	IdPaqueteTrabajo int identity(1,1) NOT NULL,
	Costos varchar(30) NOT NULL,
	Fecha date NOT NULL,
	Colaborador varchar(100) NOT NULL,
	IdLocalidad int NOt NULL,
	IdProyecto int NOt NULL,
	IdResponsable int NOt NULL,
	PRIMARY KEY (IdPaqueteTrabajo),
	FOREIGN KEY (IdLocalidad) REFERENCES Localidad(IdLocalidad),
	FOREIGN KEY (IdProyecto) REFERENCES Proyecto(IdProyecto),
	FOREIGN KEY (IdResponsable) REFERENCES Responsable(IdResponsable),
)
GO
