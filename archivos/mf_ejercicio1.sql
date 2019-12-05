CREATE DATABASE modelofisico_ejercicio1
GO

USE modelofisico_ejercicio1
GO


CREATE TABLE dbo.Lote(
	 Id int identity(1,1) NOT NULL,
	 Lore varchar(255) NOT NULL,
	 Peso varchar(12) NOT NULL,
	 TarifaExportaion decimal(18,2) NOT NULL,
	 GrupoId int,
	PRIMARY KEY (Id),
	FOREIGN KEY(GrupoId) REFERENCES Grupo(Id)
)
GO

CREATE TABLE dbo.Grupo(
	 Id int identity(1,1) NOT NULL,
	 Grupo varchar(150),
	PRIMARY KEY (Id)
)
GO

CREATE TABLE dbo.Pais(
	 Id int identity(1,1) NOT NULL,
	 Pais varchar(255) NOT NULL,
	 TarifaImportacion decimal(18,2) NOT NULL,
	PRIMARY KEY (Id)
)
GO


CREATE TABLE dbo.Destino(
	 Id int identity(1,1) NOT NULL,
	 Destino varchar(255) NOT NULL,
	 PaisId int NOT NULL,
	PRIMARY KEY (Id),
	FOREIGN KEY(PaisId) REFERENCES Pais(Id)
)
GO

CREATE TABLE dbo.ModoTransporte(
	 Id int identity(1,1) NOT NULL,
	 ModoTransporte varchar(255) NOT NULL,
	PRIMARY KEY (Id)
)
GO

CREATE TABLE dbo.GrupoCentroCosto(
	 Id int identity(1,1) NOT NULL,
	 GrupoCentroCosto decimal(18,2) NOT NULL,
	PRIMARY KEY (Id)
)
GO

CREATE TABLE dbo.CentroCosto(
	 Id int identity(1,1) NOT NULL,
	 CentroCosto decimal(18,2) NOT NULL,
	 GrupoCentroCostoId int NOT NULL,
	PRIMARY KEY (Id),
	FOREIGN KEY(GrupoCentroCostoId) REFERENCES GrupoCentroCosto(Id)
)
GO

CREATE TABLE dbo.Envio(
	 Id int identity(1,1) NOT NULL,
	 Fecha date NOT NULL,
	 Costos decimal(18,2) NOT NULL,
	 CentroCostoId INT NOT NULL,
	 LoteId int NOT NULL,
	 DestinoId int NOT NULL,
	 ModoTransporteId int NOT NULL
	PRIMARY KEY (Id),

	FOREIGN KEY(CentroCostoId) REFERENCES CentroCosto(Id),
	FOREIGN KEY(LoteId) REFERENCES Lote(Id),
	FOREIGN KEY(DestinoId) REFERENCES Destino(Id),
	FOREIGN KEY(ModoTransporteId) REFERENCES ModoTransporte(Id)

)
GO
