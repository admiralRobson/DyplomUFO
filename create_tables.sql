USE [SSIS_DATABASE]
GO

/****** Object:  Table [dbo].[DimAirport]    Script Date: 16.04.2025 20:12:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimAirport](
	[ICAO_Code] [nvarchar](100) NOT NULL,
	[IATA_Code] [nvarchar](100) NOT NULL,
	[Airport_Name] [nvarchar](100) NOT NULL,
	[City] [nvarchar](100) NOT NULL,
	[Country] [nvarchar](100) NOT NULL,
	[Latitude_Degrees] [int] NOT NULL,
	[Latitude_Minutes] [int] NOT NULL,
	[Latitude_Seconds] [int] NOT NULL,
	[Latitude_Direction] [nvarchar](1) NOT NULL,
	[Longitude_Degrees] [int] NOT NULL,
	[Longitude_Minutes] [int] NOT NULL,
	[Longitude_Seconds] [int] NOT NULL,
	[Longitude_Direction] [nvarchar](1) NOT NULL,
	[Latitude] [nvarchar](50) NOT NULL,
	[Longitude] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[DimCountries](
	[Country] [nvarchar](100) NOT NULL,
	[Country_ID] [int] NOT NULL,
	[Capital] [nvarchar](100) NOT NULL,
	[ISO-3_Code] [nvarchar](3) NOT NULL,
	[ISO-2_Code] [nvarchar](2) NOT NULL,
	[Region] [nvarchar](50) NOT NULL,
	[Region_ID] [int] NOT NULL,
	[Subregion] [nvarchar](100) NOT NULL,
	[Subregion_ID] [int] NOT NULL,
	[State] [nvarchar](100) NOT NULL,
	[State_ID] [nvarchar](50) NOT NULL,
	[State_Code] [nvarchar](100) NOT NULL,
	[State_Type] [nvarchar](100) NOT NULL
) ON [PRIMARY]
GO



CREATE TABLE [dbo].[FactCleanedData](
	[DATETIME] [nvarchar](50) NOT NULL,
	[City] [nvarchar](150) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[Shape] [nvarchar](50) NOT NULL,
	[Duration sec] [nvarchar](50) NOT NULL,
	[Duration hr min] [nvarchar](50) NOT NULL,
	[comments] [nvarchar](250) NOT NULL,
	[dateposted] [nvarchar](50) NOT NULL,
	[latitude] [nvarchar](50) NOT NULL,
	[longtitude] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO


