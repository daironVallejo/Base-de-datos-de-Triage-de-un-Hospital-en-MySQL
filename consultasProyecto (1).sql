--#1
--consulta que se encarga de mostrarnos toda la infomacion necesaria y basica sobre los 
--paciente internos(son los que estan de estadia en el hospital), la cual es ordenada de manera alfabetica.
-- esta consulta es la base para poder hacer consultas como las busqueda de informacion de un solo paciente, 
--medicos y enfermeros que mas atienden pacientes internos, etc...
 
select 
paciente.id_paciente AS codigoPaciente,
paciente.nombres AS nombresPaciente,
paciente.apellidos AS apellidosPaciente,
paciente.fecha_nacimiento AS fechaNacimientoPaciente,
procedimiento.nombre AS nombreProcedimiento,
habitacion.numero_habitacion AS numeroHabitacion,
habitacion.piso AS pisoHabitacion,
medico.id_medico AS codigomedico,
medico.nombre_completo as nombremedico,
enfermero.codigo_enfermero AS codigoEnfermero,
enfermero.nombre AS nombresEnfermero,
enfermero.apellido AS appellidosEnfermero,
archivo_paciente_interno.nombre_familiar AS nombreFamiliar,
archivo_paciente_interno.telefono_familiar AS telefonoFamiliar

from
proyecto.procedimiento procedimiento,
proyecto.paciente_interno paciente_interno,
proyecto.habitacion habitacion,
proyecto.enfermero___paciente_interno enfermero___paciente_interno,
proyecto.enfermero enfermero,
proyecto.paciente paciente,
proyecto.archivo_paciente_interno archivo_paciente_interno,
proyecto.medico___paciente medico___paciente,
proyecto.medico medico


where 
paciente_interno.fk_habitacion__paciente_interno = habitacion.numero_habitacion 
AND paciente_interno.fk_paciente__paciente_interno = paciente.id_paciente
AND paciente.fk_procedimiento__paciente = procedimiento.id_procedimiento
AND enfermero___paciente_interno.fk_paciente_interno__enfermero___paciente_interno = paciente_interno.id_paciente_interno
AND enfermero___paciente_interno.fk_enfermero__enfermero___paciente_interno = enfermero.codigo_enfermero
AND paciente_interno.fk_archivo_paciente_interno__paciente_interno = archivo_paciente_interno.codigo_archivo_int
AND medico___paciente.fk_medico__medico___paciente = medico.id_medico
AND medico___paciente.fk_paciente__medico___paciente = paciente.id_paciente

order by (paciente.nombres) ASC;



--#2
--consulta encargada de encontar cuales son los procedimientos medicos mas utilizado en el hospital
select 
procedimiento.nombre as procedimiento,
count(*) as "Cantidad EXISTENTE" 

from
proyecto.procedimiento procedimiento,
proyecto.paciente paciente
where 
paciente.fk_procedimiento__paciente = procedimiento.id_procedimiento
group by procedimiento.nombre
order by count (procedimiento.id_procedimiento) DESC;



/* #3
Reporte que muestre los siguientes datos de una paciente ambulatorio
documento, nombre, apellido,fecha nacimiento,fecha de ingreso, procedimiento realizado */


select
p.id_paciente as id,
p.documento as numeroDocumento,
p.nombres,
p.apellidos,
p.fecha_nacimiento,
f.fecha_ingreso,
pr.nombre as procedimiento

from
proyecto.paciente p,
proyecto.paciente_ambulatorio pa,
proyecto.archivo_paciente_ambulatorio f,
proyecto.procedimiento pr

where
pa.fk_archivo_paciente_ambulatorio__paciente_ambulatorio = f.codigo_archivo_amb and
pa.fk_paciente__paciente_ambulatorio = p.id_paciente and
p.fk_procedimiento__paciente = pr.id_procedimiento


/* #4
Cantidad de personas que visitan al hospital por edades
Primera infncia (0.5), infancia (6,11), adolecencia (12,18), 
juventud (19,26), adultez (27,59) y persona mayor 60 en adelante
. */
select 
count(*) as CantidadPersonas,
	(select count (*)
	from
	proyecto.paciente p
	where
	p.fecha_nacimiento >= now() - interval '18 year'
	) as "PrimeraInfncia(0.5)",
	
	(select count (*)
	from
	proyecto.paciente p
	where
	p.fecha_nacimiento >= now() - interval '11 year' and 
    p.fecha_nacimiento <= now() - interval '6 year' 
	) as "Infancia(6,11)",
	
	(select count (*)
	from
	proyecto.paciente p
	where
	p.fecha_nacimiento >= now() - interval '18 year' and 
    p.fecha_nacimiento <= now() - interval '12 year' 
	) as "Adolecencia (12,18)",
	
	(select count (*)
	from
	proyecto.paciente p
	where
	p.fecha_nacimiento >= now() - interval '26 year' and 
    p.fecha_nacimiento <= now() - interval '19 year' 
	) as "Juventud(19,26)",
	
	(select count (*)
	from
	proyecto.paciente p
	where
	p.fecha_nacimiento >= now() - interval '59 year' and 
    p.fecha_nacimiento <= now() - interval '27 year' 
	) as "adultez (27,59)",
	
	(select count (*)
	from
	proyecto.paciente p
	where 
    p.fecha_nacimiento <= now() - interval '60 year' 
	) as "personaMayor60"
	
from
proyecto.paciente p


/* #5
El hospital desea optimizar el suministro de medicamentos para la alergia
de pacientes ambulantes separándolos en dos grupos es por eso que desea
realizar la siguiente consulta. 
Un conteo de los pacientes ambulatorios mayores de 18 años los cuales su
día de nacimiento se encuentren en el intervalo de números pares comprendidos 
en el rango de 1 a 31 (grupo 1) y otro los cuales su día de nacimiento se encuentren
en el intervalo de números impares comprendidos en el rango de 1 a 31 (grupo 2), 
los dos ordenados por las alergias que más poseen dichos pacientes.*/

--GRUPO 1--
select archivo_paciente_ambulatorio.alergia,count(*) as pacientes_ambulantes
from proyecto.paciente_ambulatorio,proyecto.archivo_paciente_ambulatorio,proyecto.paciente
where
(paciente.id_paciente = fk_paciente__paciente_ambulatorio
and
date_part('year',age(paciente.fecha_nacimiento)) > '18'
and ( extract(day from paciente.fecha_nacimiento)= 2
or extract(day from paciente.fecha_nacimiento)= 4
or extract(day from paciente.fecha_nacimiento)= 6
or extract(day from paciente.fecha_nacimiento)= 8
or extract(day from paciente.fecha_nacimiento)= 10
or extract(day from paciente.fecha_nacimiento)= 12
or extract(day from paciente.fecha_nacimiento)= 14
or extract(day from paciente.fecha_nacimiento)= 16
or extract(day from paciente.fecha_nacimiento)= 18
or extract(day from paciente.fecha_nacimiento)= 20
or extract(day from paciente.fecha_nacimiento)= 22
or extract(day from paciente.fecha_nacimiento)= 24
or extract(day from paciente.fecha_nacimiento)= 26
or extract(day from paciente.fecha_nacimiento)= 28
or extract(day from paciente.fecha_nacimiento)= 30))
group by archivo_paciente_ambulatorio.alergia
order by 2  desc;
--GRUPO 2--
select archivo_paciente_ambulatorio.alergia,count(*) as pacientes_ambulantes
from proyecto.paciente_ambulatorio,proyecto.archivo_paciente_ambulatorio,proyecto.paciente
where
(paciente.id_paciente = fk_paciente__paciente_ambulatorio
and
date_part('year',age(paciente.fecha_nacimiento)) > '18'
and ( extract(day from paciente.fecha_nacimiento)= 1
or extract(day from paciente.fecha_nacimiento)= 3
or extract(day from paciente.fecha_nacimiento)= 5
or extract(day from paciente.fecha_nacimiento)= 7
or extract(day from paciente.fecha_nacimiento)= 11
or extract(day from paciente.fecha_nacimiento)= 13
or extract(day from paciente.fecha_nacimiento)= 15
or extract(day from paciente.fecha_nacimiento)= 17
or extract(day from paciente.fecha_nacimiento)= 19
or extract(day from paciente.fecha_nacimiento)= 21
or extract(day from paciente.fecha_nacimiento)= 23
or extract(day from paciente.fecha_nacimiento)= 25
or extract(day from paciente.fecha_nacimiento)= 27
or extract(day from paciente.fecha_nacimiento)= 29
or extract(day from paciente.fecha_nacimiento)= 31))
group by archivo_paciente_ambulatorio.alergia
order by 2 desc;


