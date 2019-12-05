CREATE DATABASE modelodimensional_ejercicio1
GO

USE modelodimensional_ejercicio1
GO


CREATE TABLE dbo.ModoTransporte(
	 _Key int identity(1,1) NOT NULL,
	 ModoTransporte varchar(255) NOT NULL,
	PRIMARY KEY (_Key),
)
GO


CREATE TABLE dbo.Destino(
	 _Key int identity(1,1) NOT NULL,
	 Destino varchar(255) NOT NULL,
	 Pais varchar(255) NOT NULL,
	 TarficaInportacion decimal(18,2) NOT NULL,

	PRIMARY KEY (_Key),
)
GO

CREATE TABLE dbo.Tiempo(
	 _Key int identity(1,1) NOT NULL,
	 Ano varchar(255) NOT NULL,
	 Mes varchar(255) NOT NULL,

	PRIMARY KEY (_Key),
)
GO

CREATE TABLE dbo.Lote(
	 _Key int identity(1,1) NOT NULL,
	 Lote varchar(255) NOT NULL,
	 Peso varchar(255) NOT NULL,
	 TarifaExportacion decimal(18,2) NOT NULL,
	 Grupo varchar(255) NOT NULL,

	PRIMARY KEY (_Key),
)
GO

CREATE TABLE dbo.CentroCosto(
	 _Key int identity(1,1) NOT NULL,
	 CentroCosto varchar(255) NOT NULL,
	 Responsable varchar(255) NOT NULL,
	 Grupo varchar(255) NOT NULL,

	PRIMARY KEY (_Key),
)
GO

CREATE TABLE dbo.Envio(
	 _Key int identity(1,1) NOT NULL,
	 Costo decimal(18,2) NOT NULL,
	 DestinoKey int NOT NULL,
	 CentroCostoKey int NOT NULL,
	 LoteKey int NOT NULL,
	 ModoTransporteKey int NOT NULL,
	 TiempoKey int NOT NULL,

	PRIMARY KEY (_Key),
	FOREIGN KEY (DestinoKey) REFERENCES Destino(_Key),
	FOREIGN KEY (CentroCostoKey) REFERENCES CentroCosto(_Key),
	FOREIGN KEY (LoteKey) REFERENCES Lote(_Key),
	FOREIGN KEY (ModoTransporteKey) REFERENCES ModoTransporte(_Key),
	FOREIGN KEY (TiempoKey) REFERENCES Tiempo(_Key)

)
GO


