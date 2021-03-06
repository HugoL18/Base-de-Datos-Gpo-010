--Hugo Lopez Lugo #1748951 P.D: Creo que asi era como usted lo pidio maestro si no como quiera estan las practicas subidas en github para cualquier duda que tenga esta NO la hice con mi equipo la realice solo
--Gracias Buen Dia:D  

USE [master]
GO
/****** Object:  Database [Escuela4]    Script Date: 27/10/2018 8:22:50 ******/
CREATE DATABASE [Escuela4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Escuela4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Escuela4.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Escuela4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Escuela4_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Escuela4] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Escuela4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Escuela4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Escuela4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Escuela4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Escuela4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Escuela4] SET ARITHABORT OFF 
GO
ALTER DATABASE [Escuela4] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Escuela4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Escuela4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Escuela4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Escuela4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Escuela4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Escuela4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Escuela4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Escuela4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Escuela4] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Escuela4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Escuela4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Escuela4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Escuela4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Escuela4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Escuela4] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Escuela4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Escuela4] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Escuela4] SET  MULTI_USER 
GO
ALTER DATABASE [Escuela4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Escuela4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Escuela4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Escuela4] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Escuela4] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Escuela4] SET QUERY_STORE = OFF
GO
USE [Escuela4]
GO
/****** Object:  UserDefinedFunction [dbo].[MaestrosyMaterias]    Script Date: 27/10/2018 8:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create function [dbo].[MaestrosyMaterias] (@materia varchar(50))
returns @maestros table
(Idmaestro varchar(50), Nombre varchar(50),ApellidoPaterno varchar (50), ApellidoMaterno varchar(50)
,materia varchar(50))
as
begin
insert @maestros select Idmaestro, Nombre, ApellidoPaterno,ApellidoMaterno,Materia from Maestro
where Materia= @materia
Return
end
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 27/10/2018 8:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumnos](
	[Idalumno] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ApellidoPaterno] [varchar](50) NOT NULL,
	[ApellidoMaterno] [varchar](50) NOT NULL,
	[Carrera] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Idalumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Alumnos_V]    Script Date: 27/10/2018 8:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Alumnos_V] as
select nombre from Alumnos
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 27/10/2018 8:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrera](
	[Idcarrera] [varchar](10) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Duracion] [varchar](50) NOT NULL,
	[PlanEst] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Idcarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carrera_materia]    Script Date: 27/10/2018 8:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrera_materia](
	[Idcarrera] [varchar](10) NOT NULL,
	[Idmateria] [varchar](50) NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vista_Carrera_Id]    Script Date: 27/10/2018 8:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create view
[dbo].[vista_Carrera_Id] AS

SELECT Nombre, Id
FROM Carrera
Left JOIN Carrera_materia ON Carrera.Idcarrera = Carrera_materia.Idcarrera
GO
/****** Object:  View [dbo].[vw_carreras]    Script Date: 27/10/2018 8:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[vw_carreras] as

select Idcarrera,Nombre,Duracion
from Carrera
GO
/****** Object:  View [dbo].[vw_Datos_Alumnos]    Script Date: 27/10/2018 8:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_Datos_Alumnos]
AS(

 SELECT Nombre, ApellidoPaterno,Carrera
FROM Alumnos
)
GO
/****** Object:  Table [dbo].[Maestro]    Script Date: 27/10/2018 8:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maestro](
	[Idmaestro] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ApellidoPaterno] [varchar](50) NOT NULL,
	[ApellidoMaterno] [varchar](50) NOT NULL,
	[Materia] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Idmaestro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_Maestros_Materias]    Script Date: 27/10/2018 8:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_Maestros_Materias]
AS(

 SELECT Idmaestro,Nombre,Materia, Idmateria
 From Maestro
 Left Join Carrera_materia on Maestro.Materia=Carrera_materia.Idmateria)
GO
/****** Object:  Table [dbo].[Alumnos_clase]    Script Date: 27/10/2018 8:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumnos_clase](
	[Idalumno] [varchar](50) NOT NULL,
	[Idclase] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carrera_clase_materias]    Script Date: 27/10/2018 8:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrera_clase_materias](
	[Idcarrera] [varchar](10) NOT NULL,
	[Idsalon] [varchar](50) NOT NULL,
	[Idclase] [varchar](50) NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clase]    Script Date: 27/10/2018 8:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clase](
	[Idclase] [varchar](50) NOT NULL,
	[Maestro] [varchar](50) NOT NULL,
	[Materia] [varchar](50) NOT NULL,
	[Salon] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Idclase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clase_salon]    Script Date: 27/10/2018 8:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clase_salon](
	[Idclase] [varchar](50) NOT NULL,
	[idsalon] [varchar](50) NOT NULL,
	[id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Escuela]    Script Date: 27/10/2018 8:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Escuela](
	[Idescuelas] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Idescuelas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistorialActividad]    Script Date: 27/10/2018 8:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistorialActividad](
	[fecha] [date] NULL,
	[descripcion] [varchar](100) NULL,
	[usuario] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 27/10/2018 8:22:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materia](
	[Idmateria] [varchar](50) NOT NULL,
	[Clave] [int] NOT NULL,
	[Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Idmateria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salones]    Script Date: 27/10/2018 8:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salones](
	[IdSalones] [varchar](50) NOT NULL,
	[Numero] [int] NOT NULL,
	[IdEscuela] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSalones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Alumnos_clase]  WITH CHECK ADD  CONSTRAINT [FK_Alumnos_clase_Alumnos] FOREIGN KEY([Idalumno])
REFERENCES [dbo].[Alumnos] ([Idalumno])
GO
ALTER TABLE [dbo].[Alumnos_clase] CHECK CONSTRAINT [FK_Alumnos_clase_Alumnos]
GO
ALTER TABLE [dbo].[Alumnos_clase]  WITH CHECK ADD  CONSTRAINT [FK_Alumnos_clase_Clase] FOREIGN KEY([Idclase])
REFERENCES [dbo].[Clase] ([Idclase])
GO
ALTER TABLE [dbo].[Alumnos_clase] CHECK CONSTRAINT [FK_Alumnos_clase_Clase]
GO
ALTER TABLE [dbo].[Carrera_clase_materias]  WITH CHECK ADD  CONSTRAINT [FK_Carrera_clase_materias_Carrera] FOREIGN KEY([Idcarrera])
REFERENCES [dbo].[Carrera] ([Idcarrera])
GO
ALTER TABLE [dbo].[Carrera_clase_materias] CHECK CONSTRAINT [FK_Carrera_clase_materias_Carrera]
GO
ALTER TABLE [dbo].[Carrera_clase_materias]  WITH CHECK ADD  CONSTRAINT [FK_Carrera_clase_materias_Clase] FOREIGN KEY([Idclase])
REFERENCES [dbo].[Clase] ([Idclase])
GO
ALTER TABLE [dbo].[Carrera_clase_materias] CHECK CONSTRAINT [FK_Carrera_clase_materias_Clase]
GO
ALTER TABLE [dbo].[Carrera_materia]  WITH CHECK ADD  CONSTRAINT [FK_Carrera_materia_Materia] FOREIGN KEY([Idmateria])
REFERENCES [dbo].[Materia] ([Idmateria])
GO
ALTER TABLE [dbo].[Carrera_materia] CHECK CONSTRAINT [FK_Carrera_materia_Materia]
GO
ALTER TABLE [dbo].[Carrera_materia]  WITH CHECK ADD  CONSTRAINT [FK_carreramateria] FOREIGN KEY([Idcarrera])
REFERENCES [dbo].[Carrera] ([Idcarrera])
GO
ALTER TABLE [dbo].[Carrera_materia] CHECK CONSTRAINT [FK_carreramateria]
GO
ALTER TABLE [dbo].[Clase_salon]  WITH CHECK ADD  CONSTRAINT [FK_Clase_salon_Clase] FOREIGN KEY([Idclase])
REFERENCES [dbo].[Clase] ([Idclase])
GO
ALTER TABLE [dbo].[Clase_salon] CHECK CONSTRAINT [FK_Clase_salon_Clase]
GO
ALTER TABLE [dbo].[Clase_salon]  WITH CHECK ADD  CONSTRAINT [FK_Clase_salon_Salones] FOREIGN KEY([idsalon])
REFERENCES [dbo].[Salones] ([IdSalones])
GO
ALTER TABLE [dbo].[Clase_salon] CHECK CONSTRAINT [FK_Clase_salon_Salones]
GO
ALTER TABLE [dbo].[Maestro]  WITH CHECK ADD  CONSTRAINT [FK_Maestro_Materia] FOREIGN KEY([Materia])
REFERENCES [dbo].[Materia] ([Idmateria])
GO
ALTER TABLE [dbo].[Maestro] CHECK CONSTRAINT [FK_Maestro_Materia]
GO
ALTER TABLE [dbo].[Salones]  WITH CHECK ADD  CONSTRAINT [FK_Salones_Escuela] FOREIGN KEY([IdEscuela])
REFERENCES [dbo].[Escuela] ([Idescuelas])
GO
ALTER TABLE [dbo].[Salones] CHECK CONSTRAINT [FK_Salones_Escuela]
GO
/****** Object:  StoredProcedure [dbo].[Proc_1]    Script Date: 27/10/2018 8:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROC [dbo].[Proc_1]
@Nom as varchar (10),
@Idmaestro as int
AS
UPDATE Maestro SET Idmaestro=Idmaestro-@Idmaestro
where Nombre=@Nom

GO
/****** Object:  StoredProcedure [dbo].[Proc_2]    Script Date: 27/10/2018 8:22:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[Proc_2]
@Idmateria as varchar (10),
@Clave as int
AS
UPDATE Materia SET clave=clave-@Clave
where Idmateria=@Idmateria
GO
USE [master]
GO
ALTER DATABASE [Escuela4] SET  READ_WRITE 
GO
