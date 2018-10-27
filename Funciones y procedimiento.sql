--Hugo Lopez Lugo #1748951 Funciones y Procedimientos


--Funciones

Create function MaestrosyMaterias (@materia varchar(50))
returns @maestros table
(Idmaestro varchar(50), Nombre varchar(50),ApellidoPaterno varchar (50), ApellidoMaterno varchar(50)
,materia varchar(50))
as
begin
insert @maestros select Idmaestro, Nombre, ApellidoPaterno,ApellidoMaterno,Materia from Maestro
where Materia= @materia
Return
end

select * from dbo.MaestrosyMaterias ('Calculo')

--PROCEDIMIENTOS

Create PROC Proc_1
@Nom as varchar (10),
@Idmaestro as int
AS
UPDATE Maestro SET Idmaestro=Idmaestro-@Idmaestro
where Nombre=@Nom

select * from Maestro

EXEC Proc_1 'Emiliano',10

Create PROC Proc_2
@Idmateria as varchar (10),
@Clave as int
AS
UPDATE Materia SET clave=clave-@Clave
where Idmateria=@Idmateria

EXEC Proc_2 'Derecho',200

select * from Materia