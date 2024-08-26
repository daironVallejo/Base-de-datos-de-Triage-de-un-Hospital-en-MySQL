--#1
INSERT INTO proyecto.usuario(id_usuario,documento,nombres,apellidos)  
VALUES 
('1','1090073','Marlen Haygnes','Arango Posada'),
('2','1075090','Johana Alexandra','Atehortua Agudelo'),
('3','1056121','Jhon Jairo','Barrientos González'),
('4','1050120','Mauro Albeiro','Betancur Pineda'),
('5','1077027','Luis Reinaldo','Bustamante Taborda'),
('6','1048103','María Maryory','García Moreno'),
('7','1083030','Hernado de Jesús','Echeverry Zapata'),
('8','1084010','Martha Elena','Henao Zapata'),
('9','10520909','Solina Maria','Lopera Zapata'),
('10','1029021','Cristian Dario','Hincapie Gonzalez'),
('11','1082122','Carmen Elena','Martinez Velez'),
('12','1083011','Lizeth Juliana','Lopez Mira'),
('13','1025072','Luz Marina','Montoya Villegas'),
('14','1051032','Jhon William','Munera Parra'),
('15','1032051','Juan Carlos','Soto Lennis'),
('16','1087121','Ruth Marleny','Soto Zapata'),
('17','1027032','Ana Yenifer','Rua Valencia'),
('18','1066010','Humberto León','Sanchez Gomez'),
('19','1006031','Darwin Arley','Rojo Macias'),
('20','1096040','Marleny','Sanchez Piedrahita'),
('21','1099071','Jhon Fredy','Restrepo Cárdenas'),
('22','1021081','Kane Alonso',' Gomez Cardenas'),
('23','1084051','Andrea Carolina','Padilla Montez'),
('24','1066100','Leonel Andres','Messi'),
('25','1080121','Eduardo Stiven','Raymond Quiñonez'),
('26','1087080','Marcela Lucia','Ochoa Garzon'),
('27','1045032','Isabella Maria','Hayes Hoyos'),
('28','1042021','Isaac Andrey','Ortiz Sosa'),
('29','1072080','Dario Orlando','Montgomery Burns'),
('30','1011102','Martha Elena','Gomez Cespedes'),
('31','1023011','Marcos Antonio','Estrada zapata'),
('32','1084058','Andrea Ximena','Armstrong Trujillo'),
('33','1089081','Lina marcela','Noguera Lopera'),
('34','1018062','Arsenio','Gomez Novoa'),
('35','1024032','Sofia Micaela','Ramirez Lopez'),
('36','1055041','Judas Albeiro','Gonzalez Valenciaga'),
('37','1083112','Carlos Ignacio ','Burgos Ortiz'),
('38','1053040','Luz Helena','Villa Garcia'),
('39','1087021','Manuel Marulanda','velez'),
('40','1017040','Gustavo Efrain','Benson Cacua'),
('41','1038070','Luis Simon','Jacobson Andrey'),
('42','1057051','Zahir Harim','Valentine Costa'),
('43','1030112','Wilson German','Travis Scott'),
('44','1038031','Alejandra Maria','Guerrero Lopez'),
('45','1017033','Andres Felipe','Ruiz Mosca'),
('46','1042101','Johana Alexandra','Morrison Pinzon'),
('47','1072052','Luz Adriana','Garcia Lopez'),
('48','1078112','Maria Sofia','Taborda Guerrero'),
('49','1065012','Nicole Maria','Bustamante Pineda'),
('50','1052081','Andrea Juliana','Cabrera Cardenas');

--#2
insert into proyecto.validacion(id_validacion,validacion_triaje)
values
('1','paciente'),
('2','no paciente');

--#3
insert into proyecto.enfermero(codigo_enfermero,documento,tipo,nombre,apellido,correo_electronico,direccion,telefono,fecha_nacimiento,fecha_ingreso,fk_jefe_enfermero) 
values
('1','1034593','CC','Andres Felipe','Camaron Arenis','andrescamaron@gmail.com','cra 20 # 30-80','3204563','1997-01-26','2020-02-05','1'),--jefe enfermero
('2','1045678','CC','Kevin Andres','Carrillo Mendoza','kevincarrilli@gmail.com','cra 10 # 44-76','315674','1990-01-26','2014-02-07','1'),
('3','1085693','CC','Ana Maria','Castro Hernandez','anacastro@gmail.com','cra 15 # 32-78','316785','1980-09-22','2000-10-04','1'),
('4','1056823','CC','Sandra Sofia','Hernandez Traslaviña','sandrahernandez@gmail.com','cra 8 # 54-76','318750','1986-02-15','2007-06-13','1'),
('5','1035789','CC','Antonio Fernando','Santos Olarte','antoniosantos@gmail.com','cra 11 # 35-78','316783','1999-09-05','2019-03-04','1'),
('6','1009842','CC','Ana Sofia','Esteban Santos','anaesteban@gmail.com','cra 6 # 18-34','316382','1982-05-16','2016-12-24','1'),
('7','1057384','CC','Fernando ','Garcia Perez','fernandogarcia@gmail.com','cra 1 # 22-68','316376','1998-06-22','2019-11-16','1'),
('8','1056946','CC','Maria Sol','Hernandez Quintero','mariaquintero@gmail.com','cra 8 # 54-89','32059','1992-09-22','2013-11-28','1'),
('9','1024346','CC','Victor Alfonso','Hernandez Sanchez','victorsanchez@gmail.com','cra 38 # 78-90','3214','2000-06-12','2019-10-21','1'),
('10','1056945','CC','Maria Lucrecia','Moreno Quintero','mariamoreno@gmail.com','cra 10 # 38-78','322376','1992-09-22','2019-10-18','1');

--#4
insert into proyecto.detalle_triaje(id_detalle_triaje,hora_turno,fk_enfermero__detalle_triaje)
values
('1','mañana','2'),
('2','tarde','3');

--#5
insert into proyecto.procedimiento(id_procedimiento,nombre,precio_procedimiento)
values
('1','Ninguna','000'),
('2','traqueostomia','32000'),
('3','Ventilacion no invasiva','58000'),
('4','Toracocentesis','47000'),
('5','Drenaje pleural','30000'),
('6','Colocacion de tubo de torax','45000'),
('7','Electrocardiagrama','32000'),
('8','Tension arterial','15000'),
('9','Venipuntura','60000'),
('10','Puncion arterial','30000'),
('11','Puncion intraosea','23000'),
('12','Manejo de Port a Cath','64000'),
('13','Canalizacion via venosa central','34000'),
('14','Pericardiocentesis','65000'),
('15','Desfibrilacion','56000'),
('16','Cardioversion','10000'),
('17','Puncion lumbar','8000'),
('18','Medicion de la presion intacraneal','7000'),
('19','Puncion ventriculoperitonal','45000'),
('20','Sondaje gastrico','38000'),
('21','Lavado Gastrico','67000'),
('22','Manejo de ostomias digestivas','41000'),
('23','Reduccion de prolapso rectal','57000'),
('24','Reduccion hernia inguinal','44000'),
('25','Sondaje vesical','78000'),
('26','Lavado Vesical','45000'),
('27','Puncion suprapubica','27000'),
('28','Reduccion de parafimosis','18000'),
('29','Liberacion de pene o escroto atrapados por cremallera','33000'),
('30','Detorsion testicular','19000'),
('31','Satura de heridas','5600'),
('32','Reparacion de heridas con pegamento biologico','45000'),
('33','Drenaje de abscesos cutaneos','35000'),
('34','Retirada de anzuelos','35000'),
('35','Retirada de anillos','23000'),
('36','Quemaduras','38000'),
('37','Retirada de astilla subungueal','23500'),
('38','Drenaje de hematoma subungueal','45600'),
('39','Extraccion de cuerpo extraño cutaneo','34500'),
('40','Manejo de abscesos','23800'),
('41','toma de muestras','65400'),
('42','Inmovilizacion cervical y espinal de extremidades','20900'),
('43','Pronacion dolorosa','13500'),
('44','Reduccion cerrada de una luxacion articular','12900'),
('45','Artrocentesis','5600'),
('46','Taponado nasal anterior o posterior','22000'),
('47','Extraccion de cuerpo extraño nasal','45000'),
('48','otico','73000'),
('49','faringeo','4500'),
('50','Otoscopia','39500'),
('51','Laringoscopia indirecta','87600');


--#6
INSERT INTO proyecto.paciente(id_paciente,documento,nombres,apellidos,ocupacion,fecha_nacimiento,direccion,correo_electronico,estado_civil,telefono,fk_procedimiento__paciente)  
VALUES 
('-1','0000000','','','','1111-11-11','','','','0','1'),
('1','1090073','Marlen Haygnes','Arango Posada', 'ama de casa','1963-10-15','carrera 1','marlenarango@gmail.com','casado','315123','1'),
('2','1075090','Johana Alexandra','Atehortua Agudelo','ama de casa','1923-10-16','carrera 2','johanaatehortua@gmail.com','casado','315121','2'),
('3','1056121','Jhon Jairo','Barrientos González','doctor','1975-08-30','carrera 3', 'jhonbarrientos@gmail.com','soltero','315122','3'),
('4','1050120','Mauro Albeiro','Betancur Pineda','doctor','1935-11-25','carrera 4','maurobetancur@gmail.com','soltero','315124','3'),
('5','1077027','Luis Reinaldo','Bustamante Taborda','profesor','1978-07-03','carrera 5','luisbustamante@gmail.com','casado','315125','3'),
('6','1048103','María Maryory','García Moreno','estudiante','1999-05-25','carrera 6','mariagarcia@gmail.com','soltero','315126','3'),
('7','1083030','Hernado de Jesús','Echeverry Zapata','mecanico','1988-07-18','carrera 7','hernadoecheverry@gmail.com','soltero','315127','4'),
('8','1084010','Martha Elena','Henao Zapata','estudiante','1992-05-26','carrera 8','marthahenao@gmail.com','soltero','315128','4'),
('9','10520909','Solina Maria','Lopera Zapata','mecanico','1986-02-15','carrera 9','solinalopera@gmail.com','casado','315129','5'),
('10','1029021','Cristian Dario','Hincapie Gonzalez','estudiante','1978-01-01','carrera 10','critianhincapie','soltero','315125','6'),
('11','1082122','Carmen Elena','Martinez Velez', 'estudiante','1986-03-03','carrera 11', 'carmenmartinez','casado','315185','6'),
('12','1083011','Lizeth Juliana','Lopez Mira','estudiante','1997-08-17','carrera 12','lizethlopez@gmail.com','soltero','315175','9'),
('13','1025072','Luz Marina','Montoya Villegas','profesor','1945-11-12','carrera 13','luzmontoya@gmail.com','casado','315152','6'),
('14','1000032','Jhon William','Munera Parra','profesor','1989-04-06','carrera 14','jhonmunera@gmail.com','soltero','315163','7'),
('15','1032051','Juan Carlos','Soto Lennis','profesor','1956-08-26','carrera 15','juansoto@gmail.com','casado','315145','7'),
('16','1087121','Ruth Marleny','Soto Zapata','mecanico','1978-09-27','carrera 16','ruthsoto@gmail.com','casado','315163','7'),
('17','1027032','Ana Yenifer','Rua Valencia','doctor','1987-06-08','carrera 17','anarua@gmail.com','soltero','315127','7'),
('18','1066010','Humberto León','Sanchez Gomez','doctor','1986-03-08','carrera 18','humbertorojo@gmail.com','soltero','315131','7'),
('19','1006031','Darwin Arley','Rojo Macias','estudiante','1997-05-05','carrare 19','darwinrojo@gmail.com','soltero','315113','7'),
('20','1096040','Marleny','Sanchez Piedrahita','estudiante','1996-12-12','carrera 20','marlenysanchez@gmail.com','soltero','315111','7');

--#7
INSERT into proyecto.triaje(id_triaje,resultado_chequeo,altura,peso,fk_validacion_triaje,
			       fk_detalle_triaje__triaje,fk_usario_triaje,fk_paciente_triaje)
VALUES
('1','paciente con gripe','160','60', '1','1','1','1'),
('2','paciente con gripe','170','70', '1','2','2','2'),
('3','paciente con fiebre','161','61', '1','1','3','3'),
('4','paciente con fiebre','162','62', '1','2','4','4'),
('5','paciente con corona virus','162','62', '1','1','5','5'),
('6','paciente con corona virus','163','63', '1','2','6','6'),
('7','paciente con fractura','164','64', '1','1','7','7'),
('8','paciente con fractura','165','65', '1','2','8','8'),
('9','paciente con gripe','166','66', '1','1','9','9'),
('10','paciente con gripe','167','67', '1','2','10','10'),
('11','paciente con fiebre','168','68', '1','1','11','11'),
('12','paciente con fiebre','169','69', '1','2','12','12'),
('13','paciente con pulmonia','173','73', '1','1','13','13'),
('14','paciente con pulmonia','174','74', '1','2','14','14'),
('15','paciente con dolor de cabeza','175','75', '1','1','15','15'),
('16','paciente con dolor de cabeza','176','76', '1','2','16','16'),
('17','paciente con ebola','177','77', '1','1','17','17'),
('18','paciente con ebola','178','78', '1','2','18','18'),
('19','paciente con gripe','179','79', '1','1','19','19'),
('20','paciente con gripe','180','80', '1','2','20','20'),
('21','paciente sin gravedad','181','81', '2','1','21','-1'),
('22','paciente sin gravedad','182','82', '2','1','22','-1'),
('23','paciente sin gravedad','183','83', '2','1','23','-1'),
('24','paciente sin gravedad','184','84', '2','1','24','-1'),
('25','paciente sin gravedad','185','85', '2','1','25','-1'),
('26','paciente sin gravedad','186','86', '2','1','26','-1'),
('27','paciente sin gravedad','187','87', '2','1','27','-1'),
('28','paciente sin gravedad','188','88', '2','1','28','-1'),
('29','paciente sin gravedad','189','89', '2','1','29','-1'),
('30','paciente sin gravedad','150','50', '2','1','30','-1'),
('31','paciente sin gravedad','151','51', '2','1','31','-1'),
('32','paciente sin gravedad','152','52', '2','1','32','-1'),
('33','paciente sin gravedad','153','53', '2','1','33','-1'),
('34','paciente sin gravedad','154','54', '2','1','34','-1'),
('35','paciente sin gravedad','155','55', '2','1','35','-1'),
('36','paciente sin gravedad','156','56', '2','2','36','-1'),
('37','paciente sin gravedad','157','57', '2','2','37','-1'),
('38','paciente sin gravedad','158','58', '2','2','38','-1'),
('39','paciente sin gravedad','159','59', '2','2','39','-1'),
('40','paciente sin gravedad','160','60', '2','2','40','-1'),
('41','paciente sin gravedad','161','61', '2','2','41','-1'),
('42','paciente sin gravedad','162','62', '2','2','42','-1'),
('43','paciente sin gravedad','163','63', '2','2','43','-1'),
('44','paciente sin gravedad','164','64', '2','2','44','-1'),
('45','paciente sin gravedad','165','65', '2','2','45','-1'),
('46','paciente sin gravedad','166','66', '2','2','46','-1'),
('47','paciente sin gravedad','167','67', '2','2','47','-1'),
('48','paciente sin gravedad','168','68', '2','2','48','-1'),
('49','paciente sin gravedad','169','69', '2','2','49','-1'),
('50','paciente sin gravedad','170','70', '2','2','50','-1');

--#10
INSERT INTO proyecto.archivo_paciente_ambulatorio(codigo_archivo_amb, historial_medico,alergia,imagene_medica,cantidad_ingresos,fecha_ingreso,hora_ingreso)
VALUES
('1','covid v1','urticaria','c:hospital/escritorio/imagenes.foto1','15','2020-02-25','20:44:11'),
('2','covid v1','urticaria','c:hospital/escritorio/imagenes.foto2','17','2020-03-25','12:44:12'),
('3','covid v2','urticaria','c:hospital/escritorio/imagenes.foto3','25','2020-04-02','10:44:11'),
('4','covid v2','asma','c:hospital/escritorio/imagenes.foto4','11','2020-01-25','18:44:11'),
('5','covid v3','asmaa','c:hospital/escritorio/imagenes.foto5','2','2020-02-26','22:44:11'),
('6','covid v3','asma','c:hospital/escritorio/imagenes.foto6','1','2020-01-15','01:44:11'),
('7','paro cardiaco','rinitis','c:hospital/escritorio/imagenes.foto7','15','2019-12-25','10:34:11'),
('8','accidente de moto','rinitis','c:hospital/escritorio/imagenes.foto8','9','2019-02-25','20:14:02'),
('9','acidente de carro','rinitis','c:hospital/escritorio/imagenes.foto9','5','2020-01-01','18:44:11'),
('10','intoxicado','urticaria','c:hospital/escritorio/imagenes.foto10','55','2020-03-03','01:01:01');

--#11
insert into proyecto.archivo_medico(codigo_archivo_medico,estudios,fecha_ingreso)
values
('01','medicina general','2017-07-02'),
('02','medicina general','2019-04-12'),
('03','medicina general','2015-02-12'),
('04','medicina general','2016-01-30'),
('05','medicina general','2011-11-22'),
('06','medicina general','2015-12-05'),
('07','medicina general, dermatologia','2015-01-30'),
('08','medicina general, ginecologia','2018-04-02'),
('09','medicina general, oftamologia','2018-03-15'),
('10','medicina general, pediatria','2018-03-13');

--#12

insert into proyecto.medico(id_medico,documento,nombre_completo,telefono,correo,direccion,fecha_nacimiento,especialidad,fk_archivo_medico__medico)
values
('1','1084392','Victor Manuel Sanchez Gonzalez','321540','victorsanchez@gmail.com','cra 20 # 30-98','1980-09-13','medico general','01'),
('2','1067478','Patricia Moreno Toloza','322356','patriciamoreno@gmail.com','cra 4 # 68-90','1992-04-15','medico general','02'),
('3','1067943','Jhon Freddy Cadena Duarte','324576','jhoncadena@gmail.com','cra 2 # 79.02','1994-02-25','medico general','03'),
('4','1043567','Sandra Isabel Toloza Romeri','324590','sandratoloza@gmail.com','cra 6 # 56-98','1985-09-13','medico general','04'),
('5','1024643','Libardo Lache Castro','320464','libardolache@gmail.com','cra 9 # 65-90','1990-11-16','medico general','05'),
('6','1014245','Elive Blanco Esteban','320384','eliveblanco@gmail.com','cra 12 # 2-90','1988-04-15','medico general','06'),
('7','1084392','Hector Octavio blanco','324568','hectorblanco@gmail.com','cra 7 # 10-98','1984-01-01','medico dermatologo','07'),
('8','1002583','Erika Milena Duarte Pedraza','313453','erikaduarte@gmail.com','cra 5 # 01-08','1980-09-13','medico ginecologo','08'),
('9','1008578','Alfonso Mendez Otero','323461','alfonsomendez@gmail.com','cra 06 # 77-90','1987-03-08','medico oftamologo','09'),
('10','1045362','Ana Dolores Terra Vera','321540','anaterra@gmail.com','cra 5 # 03-78','1992-12-08','medico pediatra','10');

--#13
INSERT INTO proyecto.consultorio(numero_consultorio, piso, fk_medico_consultorio)
VALUES
('1','1','1'),
('2','1','2'),
('3','2','3'),
('4','2','4'),
('5','3','5'),
('6','3','6');

--#14 
INSERT INTO proyecto.paciente_ambulatorio(codigo_archivo_amb,fk_archivo_paciente_ambulatorio__paciente_ambulatorio,fk_paciente__paciente_ambulatorio)
VALUES 
('1','1','1'),
('2','2','2'),
('3','3','3'),
('4','4','4'),
('5','5','5'),
('6','6','6'),
('7','7','7'),
('8','8','8'),
('9','9','9'),
('10','10','10');

--#15
INSERT INTO proyecto.paciente_ambulatorio___consultorio(codigo_paciente,id_consultorio,receta_medica,
fk_paciente_ambulatorio__paciente_ambulatorio___consultorio,
fk_consultorio__paciente_ambulatorio___consultorio)
VALUES
('1','1','acetaminofen','1','1'),
('2','2','acetaminofen','2','2'),
('3','3','acetaminofen','3','3'),
('4','4','acetaminofen','4','4'),
('5','5','acetaminofen','5','5'),
('6','6','acetaminofen','6','6'),
('7','5','acetaminofen','7','5'),
('4','8','acetaminofen','8','4'),
('3','9','acetaminofen','9','3'),
('2','10','acetaminofen','10','2');

--#16
INSERT INTO proyecto.visitante(documento_visitante,nombre_completo_visitante,direccion,telefono_fijo,celular,horas_visita,fecha_visita)
VALUES 
('1649090','Armando Alonso Pasto Garcia','Apt #128-395','0133535','2632091','mañana','2020-03-22'),
('1016051','Andres Esteban Quintero Garrido','Apt #171-781 Bultos St.','0501902','3639819','tarde','2019-09-24'),
('1050052','Carlos Manuel Sosa Perez',' cra 717-9180','0716484','6749952','mañana','2020-01-20'),
('1097042','Gabriel Gomez Arciniegas','Apt #465-377 Semillas Rd.','0333301','9613843','tarde','2019-12-25'),
('1083030','Tomas Felipe Bustamante Casas','cra 653 cll 5924','0505290','0237339','mañana','2019-11-14'),
('1020071','Luis Andres Mendoza Martinez','Apt #109-1042 Arcubides Av.','0268268','8830898','tarde','2020-02-12'),
('1000052','Pablo Pedro Milanes Rodriguez','7881 Gran Rodadero','0794062','2306098','mañana','2020-01-14');

--#17
insert into proyecto.detalle_visita(id_detalle_visita,parentezco,fk_visitante__detalle_visita)
values
('1','Padre','1649090'),
('2','Hermano','1016051'),
('3','Primo','1050052'),
('4','Hermano','1097042'),
('5','Tio','1083030'),
('6','Abuelo','1083030'),
('7','Sobrino','1000052');

--#18
INSERT INTO proyecto.archivo_paciente_interno(codigo_archivo_int, motivo_hospitalizacion, nombre_familiar,telefono_familiar,cantidad_chequeo)
VALUES 
('1','covid v4','maria Velez','3152481','2'),
('2','covid v4','carlos lopez','3152426','3'),
('3','covid v5','manuel montoya','3152456','2'),
('4','covid v5','flor munera','3152453','3'),
('5','gripe','marlon soto','3152631','2'),
('6','fiebre','ana soto','3152597','2'),
('7','pulmonia','carmen rua','3156938','3'),
('8','fiebre','dario sanchez','315268','3'),
('9','gripe','armando rojo','315562','3'),
('10','covid v5','ronal sanchez','3156565','2');

--#19
INSERT INTO proyecto.habitacion(numero_habitacion,piso,tamaño) 
VALUES 
('1','1','mediana'),
('2','2','mediana'),
('3','3','pequeña'),
('4','3','mediana'),
('5','3','pequeña'),
('6','3','pequeña'),
('7','3','pequeña'),
('8','2','pequeña'),
('9','1','grande');

--#20
INSERT INTO proyecto.paciente_interno(id_paciente_interno,fk_archivo_paciente_interno__paciente_interno,
							fk_habitacion__paciente_interno,fk_detalle_visita__paciente_interno,
							fk_paciente__paciente_interno)
VALUES
('1','1','1','1','11'),
('2','2','2','2','12'),
('3','3','3','3','13'),
('4','4','4','4','14'),
('5','5','5','5','15'),
('6','6','6','6','16'),
('7','7','7','7','17'),
('8','8','8','2','18'),
('9','9','9','1','19'),
('10','10','1','2','20');

--#21
INSERT INTO proyecto.enfermero___paciente_interno(codigo_enfermero,id_paciente_interno,fk_enfermero__enfermero___paciente_interno,
										fk_paciente_interno__enfermero___paciente_interno)
VALUES
('1','1','1','1'),
('2','2','2','2'),
('3','3','3','3'),
('4','4','4','4'),
('5','5','5','5'),
('6','6','6','6'),
('7','7','7','7'),
('8','8','8','8'),
('9','9','9','9'),
('10','10','10','10');

--#22
INSERT INTO proyecto.medico___paciente(id_medico,id_paciente,fk_medico__medico___paciente,fk_paciente__medico___paciente)
VALUES
('6','1','6','1'),
('5','2','5','2'),
('4','3','4','3'),
('3','4','3','4'),
('2','5','2','5'),
('1','6','1','6'),
('2','7','2','7'),
('3','8','3','8'),
('4','9','4','9'),
('5','10','5','10'),
('1','11','1','11'),
('2','12','2','12'),
('3','13','3','13'),
('4','14','4','14'),
('5','15','5','15'),
('6','16','6','16'),
('7','17','7','17'),
('8','18','8','18'),
('9','19','9','19'),
('10','20','10','20');
