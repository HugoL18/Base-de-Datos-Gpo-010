--Hugo Lopez Lugo #1748951 Selects y Joins

SELECT COUNT (Nombre) AS VecesRepetidas FROM Alumnos
WHERE Nombre='Hugo';

SELECT MAX (Clave) AS ClaveMasGrande FROM Materia;

SELECT MIN (Clave) AS ClaveMasBaja FROM Materia;

SELECT Clave, COUNT(Clave) AS "Numero de veces repetida:"
FROM Materia
Where Clave=401
GROUP BY Clave;

SELECT COUNT (Clave) AS ClavesMayorA300 FROM Materia
WHERE Clave>300;

--INNER JOIN

SELECT Alumnos.Carrera, Carrera.Idcarrera
FROM Alumnos
INNER JOIN Carrera ON Alumnos.Carrera = Carrera.Idcarrera;

--CROSS JOIN

select Idalumno, Idclase
  from Alumnos
  cross join Clase;

--LEFT JOIN

SELECT Nombre, Id
FROM Carrera
Left JOIN Carrera_materia ON Carrera.Idcarrera = Carrera_materia.Idcarrera

--RIGHT JOIN

SELECT Idmateria, Nombre
FROM Carrera_materia
RIGHT JOIN Carrera  ON Carrera_materia.Idmateria = Carrera.Nombre;

--SELECTS CON Y SIN GROUP BY 

SELECT COUNT(Idmateria) AS Totalmaaterias FROM Materia

SELECT COUNT(Nombre) AS Totalmaestros  FROM Maestro

SELECT	Nombre, COUNT(Nombre) AS "Se repite"
FROM Alumnos
Where Nombre='Hugo'
GROUP BY Nombre;

SELECT Idmaestro, COUNT(Idmaestro) AS "Numero de maestros antiguos"
FROM Maestro
where Idmaestro >= 400
GROUP BY Idmaestro;

SELECT Salon, COUNT(Salon) AS 'Salones Repetidos'
FROM Clase
GROUP BY Salon
HAVING COUNT(Salon) >1;

--3 SELECTS CON JOIN Y GROUP BY

SELECT Carrera.Nombre, COUNT(Carrera_materia.Idmateria) AS MateriasIguales
FROM Carrera
LEFT JOIN Carrera_materia ON Carrera.Nombre = Carrera_materia.Idmateria
GROUP BY Nombre;

SELECT Carrera.Duracion, COUNT(Carrera.Duracion) AS Cantidaddecarreras
FROM Carrera
LEFT JOIN Carrera_materia ON Carrera.Duracion= Carrera_materia.Idcarrera
GROUP BY Duracion;

SELECT Carrera.PlanEst, COUNT(Carrera.PlanEst) AS CarrerasConElMismoPlan
FROM Carrera
LEFT JOIN Carrera_materia ON Carrera.PlanEst = Carrera_materia.Idcarrera
GROUP BY PlanEst;