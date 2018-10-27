--Hugo Lopez Lugo #1748951 SubConsultas, Vistas y Consulta Dinamica

--Subconsulta

select * from Materia where Materia.Clave = (select Clave from Materia where Clave = 201 )

select * from Alumnos where Nombre = (select Nombre from Alumnos where Idalumno = 'A10')

select * from Maestro where Nombre = (select Nombre from Maestro where Idmaestro= 120)

--SUBCONSULTA WITH

WITH NC AS (
SELECT Clave, Count (Clave) AS CANTIDAD
	FROM Materia
	GROUP BY Clave
)

SELECT *
FROM NC
WHERE NC.CANTIDAD = 4

--VISTAS

create view Alumnos_V as
select nombre from Alumnos


Create view
vista_Carrera_Id AS

SELECT Nombre, Id
FROM Carrera
Left JOIN Carrera_materia ON Carrera.Idcarrera = Carrera_materia.Idcarrera

CREATE VIEW V_Customer
AS(

 SELECT Nombre, ApellidoPaterno,Carrera
FROM Alumnos
)


create view vw_carreras as

select Idcarrera,Nombre,Duracion
from Carrera

CREATE VIEW V_Customer
AS(

 SELECT Nombre, ApellidoPaterno,Carrera
FROM Alumnos
)

--CONSULTA DINAMICA


DECLARE @NUMERO INT=401
DECLARE @query Nvarchar(2000)
SET @query = 'SELECT NUMERO FROM dbo.SALONES WHERE NUMERO = '
DECLARE @SQL NVARCHAR(2000) = CONCAT (@query, @NUMERO)
--SELECT @SQL
EXEC(@SQL)