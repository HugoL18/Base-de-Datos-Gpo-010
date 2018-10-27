
insert into Escuela (Idescuelas,Nombre) values ('Escuela 1' , 'Secundaria #34')

insert into Salones (IdSalones,IdEscuela, Numero) values ('P1', 'Escuela 1', '401') 

INSERT into Clase_salon (Idclase, idsalon, id) values ('C1', 'P1', '1')

insert into Clase(Idclase, Maestro, Materia, Salon) values ('C1', 'Juan', 'Biologia', '401')

insert into Alumnos_clase(Idalumno, Idclase) values ('A1' , 'C1')

insert into Carrera (Idcarrera, Nombre, Duracion,PlanEst) values ('LSTI','Licenciado en Seguridad', 'Cuatro años', '401')

INSERT into Carrera_clase_materias (Idcarrera, Idclase, Idsalon, id) values ('LSTI', 'C1', 'P1','2')

INSERT into Materia (Idmateria, Clave, Id) values ('Algebra', '401', '3')

insert into Carrera_materia (Idcarrera, Idmateria,Id) values ('LSTI', 'Algebra','4')

insert into Maestro(Idmaestro, Nombre, ApellidoPaterno, ApellidoMaterno, Materia) values ('320', 'Juan', 'Martinez','Gonzalez', 'Algebra')

insert into Escuela (Idescuelas,Nombre) values ('Escuela 2' , 'Facultad de Ciencias Fisco Matematicas')

insert into Escuela (Idescuelas,Nombre) values ('Escuela 3' , 'Fcultad de Ciencias Quimicas')

insert into Escuela (Idescuelas,Nombre) values ('Escuela 4' , 'Facultad de Organizacion Deportiva')

insert into Escuela (Idescuelas,Nombre) values ('Escuela 5' , 'Facultdad de Ciencias Biologicas')

insert into Escuela (Idescuelas,Nombre) values ('Escuela 6' , 'Facultad de Ingenieria Mecanico Electrico')

insert into Escuela (Idescuelas,Nombre) values ('Escuela 7' , 'Facultad de Ciencias de la Comunicacion')

insert into Escuela (Idescuelas,Nombre) values ('Escuela 8' , 'Facultad de Artes Visuales')

insert into Escuela (Idescuelas,Nombre) values ('Escuela 9' , 'Facultdad de Filosofia y Letras')

insert into Escuela (Idescuelas,Nombre) values ('Escuela 10' , 'Facultad de Derecho y Criminologia')

insert into Salones (IdSalones,IdEscuela, Numero) values ('P2', 'Escuela 2', '301') 

INSERT into Clase_salon (Idclase, idsalon, id) values ('C2', 'P2', '2')

insert into Clase(Idclase, Maestro, Materia, Salon) values ('C2', 'Pedro', 'Calculo', '301')

insert into Salones (IdSalones,IdEscuela, Numero) values ('P2', 'Escuela 2', '301') 

insert into Salones (IdSalones,IdEscuela, Numero) values ('P3', 'Escuela 3', '101')

insert into Salones (IdSalones,IdEscuela, Numero) values ('P4', 'Escuela 4', '501')  

insert into Salones (IdSalones,IdEscuela, Numero) values ('P5', 'Escuela 5', '201') 

insert into Salones (IdSalones,IdEscuela, Numero) values ('P6', 'Escuela 6', '601') 

insert into Salones (IdSalones,IdEscuela, Numero) values ('P7', 'Escuela 7', '801') 

insert into Salones (IdSalones,IdEscuela, Numero) values ('P8', 'Escuela 8', '701') 

insert into Salones (IdSalones,IdEscuela, Numero) values ('P9', 'Escuela 9', '901') 

insert into Salones (IdSalones,IdEscuela, Numero) values ('P10', 'Escuela 10', '151') 

insert into Clase(Idclase, Maestro, Materia, Salon) values ('C3', 'Elizabeth', 'Quimica 1', '101')

insert into Clase(Idclase, Maestro, Materia, Salon) values ('C4', 'Alondra', 'Competencia Comunicativa', '501')

insert into Clase(Idclase, Maestro, Materia, Salon) values ('C5', 'Jorge', 'Biologia 1', '201')

insert into Clase(Idclase, Maestro, Materia, Salon) values ('C6', 'Emiliano', 'Fisica 1', '601')

insert into Clase(Idclase, Maestro, Materia, Salon) values ('C7', 'Jose', 'Español 1', '701')

insert into Clase(Idclase, Maestro, Materia, Salon) values ('C8', 'Cesar', 'Lenguaje 1', '901')

insert into Clase(Idclase, Maestro, Materia, Salon) values ('C9', 'Rita', 'Derecho 1', '151')

INSERT into Clase_salon (Idclase, idsalon, id) values ('C2', 'P3', '3')

INSERT into Clase_salon (Idclase, idsalon, id) values ('C3', 'P4', '4')

INSERT into Clase_salon (Idclase, idsalon, id) values ('C4', 'P5', '5')

INSERT into Clase_salon (Idclase, idsalon, id) values ('C6', 'P6', '6')

INSERT into Clase_salon (Idclase, idsalon, id) values ('C7', 'P7', '7')

INSERT into Clase_salon (Idclase, idsalon, id) values ('C8', 'P8', '8')

INSERT into Clase_salon (Idclase, idsalon, id) values ('C9', 'P9', '9')

INSERT into Clase_salon (Idclase, idsalon, id) values ('C10', 'P10', '10')

insert into Alumnos (Idalumno, Nombre, ApellidoPaterno, ApellidoMaterno, Carrera) values ('A2', 'Roberto', 'Martinez', 'Lugo', 'LCC')

insert into Alumnos (Idalumno, Nombre, ApellidoPaterno, ApellidoMaterno, Carrera) values ('A3', 'Norberto', 'Gonzalez', 'Saldivar', 'IQ')

insert into Alumnos (Idalumno, Nombre, ApellidoPaterno, ApellidoMaterno, Carrera) values ('A4', 'Hugo', 'Gonzalez', 'Martinez', 'EF')

insert into Alumnos (Idalumno, Nombre, ApellidoPaterno, ApellidoMaterno, Carrera) values ('A5', 'Carolina', 'Lopez', 'Rodriguez', 'LCA')

insert into Alumnos (Idalumno, Nombre, ApellidoPaterno, ApellidoMaterno, Carrera) values ('A6', 'Tara', 'Perez', 'Hernandez', 'ITS')

insert into Alumnos (Idalumno, Nombre, ApellidoPaterno, ApellidoMaterno, Carrera) values ('A7', 'Sara', 'Martinez', 'Herrera', 'LCC')

insert into Alumnos (Idalumno, Nombre, ApellidoPaterno, ApellidoMaterno, Carrera) values ('A8', 'Hector', 'Platas', 'Aguirre', 'LAV')

insert into Alumnos (Idalumno, Nombre, ApellidoPaterno, ApellidoMaterno, Carrera) values ('A9', 'Osvaldo', 'Alanis', 'Contreras', 'LCL')

insert into Alumnos (Idalumno, Nombre, ApellidoPaterno, ApellidoMaterno, Carrera) values ('A10', 'Carlos', 'Lozano', 'Barron', 'LD')

insert into Alumnos_clase(Idalumno, Idclase) values ('A2' , 'C2')

insert into Alumnos_clase(Idalumno, Idclase) values ('A3' , 'C3')

insert into Alumnos_clase(Idalumno, Idclase) values ('A4' , 'C4')

insert into Alumnos_clase(Idalumno, Idclase) values ('A5' , 'C5')

insert into Alumnos_clase(Idalumno, Idclase) values ('A6' , 'C6')

insert into Alumnos_clase(Idalumno, Idclase) values ('A7' , 'C7')

insert into Alumnos_clase(Idalumno, Idclase) values ('A8' , 'C8')

insert into Alumnos_clase(Idalumno, Idclase) values ('A9' , 'C9')

insert into Alumnos_clase(Idalumno, Idclase) values ('A10' , 'C10')

insert into Carrera (Idcarrera, Nombre, Duracion,PlanEst) values ('LSTI','Licenciado en Seguridad', 'Cuatro años', '401')

insert into Carrera (Idcarrera, Nombre, Duracion,PlanEst) values ('LCC','Licenciado en Ciencias Computaciones', 'CINCO años', '401')

insert into Carrera (Idcarrera, Nombre, Duracion,PlanEst) values ('IQ', 'Ingeniero Quimico', 'Cinco años', '401')

insert into Carrera (Idcarrera, Nombre, Duracion,PlanEst) values ('EF','Educacion Fisica', 'Cuatro años', '201')

insert into Carrera (Idcarrera, Nombre, Duracion,PlanEst) values ('LCA','Licenciado en Ciencias en Alimentos', 'Cuatro años', '401')

insert into Carrera (Idcarrera, Nombre, Duracion,PlanEst) values ('ITS','Ingeniera en Tecnologia de Software', 'Cinco años', '410')

insert into Carrera (Idcarrera, Nombre, Duracion,PlanEst) values ('LCCO','Licenciado en Ciencias de la Comunicacion', 'Cuatro años', '201')

insert into Carrera (Idcarrera, Nombre, Duracion,PlanEst) values ('LAV','Licenciado en Artes Visuales', 'Cuatro años', '201')

insert into Carrera (Idcarrera, Nombre, Duracion,PlanEst) values ('LCL','Licenciado en Ciencias del Lenguaje', 'Cuatro años', '201')

insert into Carrera (Idcarrera, Nombre, Duracion,PlanEst) values ('LD','Licenciado en Derecho', 'Cuatro años', '201')

INSERT into Carrera_clase_materias (Idcarrera, Idclase, Idsalon, id) values ('LCC', 'C2', 'P2','3')

INSERT into Carrera_clase_materias (Idcarrera, Idclase, Idsalon, id) values ('IQ', 'C3', 'P3','4')

INSERT into Carrera_clase_materias (Idcarrera, Idclase, Idsalon, id) values ('EF', 'C4', 'P4','5')

INSERT into Carrera_clase_materias (Idcarrera, Idclase, Idsalon, id) values ('LCA', 'C5', 'P5','6')

INSERT into Carrera_clase_materias (Idcarrera, Idclase, Idsalon, id) values ('ITS', 'C6', 'P6','7')

INSERT into Carrera_clase_materias (Idcarrera, Idclase, Idsalon, id) values ('LCCO', 'C7', 'P7','8')

INSERT into Carrera_clase_materias (Idcarrera, Idclase, Idsalon, id) values ('LAV', 'C8', 'P8','9')

INSERT into Carrera_clase_materias (Idcarrera, Idclase, Idsalon, id) values ('LCL', 'C9', 'P9','10')

INSERT into Carrera_clase_materias (Idcarrera, Idclase, Idsalon, id) values ('LD', 'C10', 'P10','11')

INSERT into Materia (Idmateria, Clave, Id) values ('Calculo', '301', '1')

INSERT into Materia (Idmateria, Clave, Id) values ('Quimica', '101', '2')

INSERT into Materia (Idmateria, Clave, Id) values ('Competencia Comunicativa', '501', '4')

INSERT into Materia (Idmateria, Clave, Id) values ('Biologia 1', '201', '5')

INSERT into Materia (Idmateria, Clave, Id) values ('Fisica 1', '601', '6')

INSERT into Materia (Idmateria, Clave, Id) values ('Español 1', '401', '7')

INSERT into Materia (Idmateria, Clave, Id) values ('Lenguaje 1', '401', '8')

INSERT into Materia (Idmateria, Clave, Id) values ('Derecho', '401', '9')

INSERT into Materia (Idmateria, Clave, Id) values ('Algebra', '401', '10')

INSERT into Materia (Idmateria, Clave, Id) values ('Artes Visuales', '452', '11')

insert into Carrera_materia (Idcarrera, Idmateria,Id) values ('LCC', 'Calculo','1')

insert into Carrera_materia (Idcarrera, Idmateria,Id) values ('IQ', 'Quimica','2')

insert into Carrera_materia (Idcarrera, Idmateria,Id) values ('EF', 'Competencia Comunicativa','3')

insert into Carrera_materia (Idcarrera, Idmateria,Id) values ('LCA', 'Biologia 1','5')

insert into Carrera_materia (Idcarrera, Idmateria,Id) values ('ITS', 'Fisica 1','6')

insert into Carrera_materia (Idcarrera, Idmateria,Id) values ('LCCO', 'Español 1','7')

insert into Carrera_materia (Idcarrera, Idmateria,Id) values ('LAV', 'Artes Visuales','8')

insert into Carrera_materia (Idcarrera, Idmateria,Id) values ('LCL', 'Lenguaje 1','9')

insert into Carrera_materia (Idcarrera, Idmateria,Id) values ('LD', 'Derecho','10')

insert into Maestro(Idmaestro, Nombre, ApellidoPaterno, ApellidoMaterno, Materia) values ('120', 'Aloso', 'Martinez','Perez', 'Calculo')

insert into Maestro(Idmaestro, Nombre, ApellidoPaterno, ApellidoMaterno, Materia) values ('220', 'Rita', 'Lugo','Guillen', 'Quimica')

insert into Maestro(Idmaestro, Nombre, ApellidoPaterno, ApellidoMaterno, Materia) values ('430', 'Nelly', 'Rosales','Cervantes', 'Competencia Comunicativa')

insert into Maestro(Idmaestro, Nombre, ApellidoPaterno, ApellidoMaterno, Materia) values ('540', 'Jorge', 'Montes','De Oca', 'Biologia 1')

insert into Maestro(Idmaestro, Nombre, ApellidoPaterno, ApellidoMaterno, Materia) values ('180', 'carmen', 'hernandez','Gonzalez', 'fisica 1')

insert into Maestro(Idmaestro, Nombre, ApellidoPaterno, ApellidoMaterno, Materia) values ('370', 'irving', 'frias','sosa', 'Español 1')

insert into Maestro(Idmaestro, Nombre, ApellidoPaterno, ApellidoMaterno, Materia) values ('270', 'karen', 'rodriguez','flores', 'Lenguaje 1')

insert into Maestro(Idmaestro, Nombre, ApellidoPaterno, ApellidoMaterno, Materia) values ('160', 'luis', 'gaytan','camero', 'Derecho')

insert into Maestro(Idmaestro, Nombre, ApellidoPaterno, ApellidoMaterno, Materia) values ('450', 'Monica', 'lago','corral', 'Artes visuales')

