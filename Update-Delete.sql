--HUGO LOPEZ LUGO #1748951 UPDATES-DELETES

update Escuela Set Nombre= 'Facultad de Medicina'  Where Nombre = 'Secundaria #34'

update Materia Set Clave = '250'  Where Clave = '452'

update Carrera Set Duracion = 'Cinco años'  Where Duracion = 'CINCO años'

update Clase Set Maestro = 'Fernando'  Where Maestro = 'Pedro' and Idclase= 'C10'

update Clase Set Materia = 'Algebra'  Where Materia = 'Calculo' and Idclase= 'C10'

delete from Materia where Clave=12 ;

delete from Maestro where Nombre = 'HASLO';

delete from Maestro where ApellidoMaterno ='ENZO';

delete from Maestro where ApellidoPaterno = 'PEREZ';

delete from Materia where Clave=105 ;

