--Hugo Lopez Lugo #1748951

--Triggers

create trigger Tr_delete
on Alumnos
after delete
as
insert into HistorialActividad(fecha, descripcion,usuario)
values (GETDATE(),'Se elimino un alumno', user)


create trigger Tr_insert
on Alumnos
after insert
as
insert into HistorialActividad(fecha, descripcion,usuario)
values (GETDATE(),'Se agrego a un alumno', user)

