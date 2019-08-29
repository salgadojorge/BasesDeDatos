--Insercion Dueno
insert into dueno values('CC',1056378590,'Santiago','Escobar',3114697398,'Tokyo','4490 Cherry Blossom Campus', 'santigo@BD.com'); 
insert into dueno values('CE',1640364078,'Edwin','Vesga',3134785421,'Soacha','4634 Red Pony Path', 'edwin@BD.com');
insert into dueno values('CE',1535735580,'Jorge','Salgado',3107894258,'Cali','1324 Lost Barn Impasse', 'jorge@BD.com');
insert into dueno values('CE',1479674652,'Sebastian','Angarita',3126987452,'Bogota','9841 Little Grounds', 'Sebastina@BD.com');
insert into dueno values('CC',1345864312,'Hayao','Miyazaki',3119369875,'Yokohama','387 Silent Butterfly Forest', 'Hayao@BD.com');
insert into dueno values('CC',1234843186,'Martin','Scorsese',3107412147,'Chicago','9045 Silver Gardens', 'martin@BD.com');
insert into dueno values('CC',1238789413,'Danny','Boyle',3115824796,'Radcliffe','9396 Thunder Pony Avenue', 'danny@BD.com');
insert into dueno values('CC',1657984351,'Stanley','Kubrick',3137478520,'Manhattan','4676 Fallen Pine Crest', 'stanley@BD.com');
insert into dueno values('CE',1799763456,'Cristopher','Nolan',3110258632,'Westminster','326 Blue Branch Walk', 'cristopher@BD.com');
insert into dueno values('CC',1456456358,'Quentin','Tarantino',3147854210,'Knoxville','26 Cotton Wynd', 'quentin@BD.com');

--Insercion Especialidad
insert into especialidad values(1,'Neurologia',1.10);
insert into especialidad values(2,'Cardiologia',1.15);
insert into especialidad values(3,'Odontologia',1.82);
insert into especialidad values(4,'Ortopedia',1.76);
insert into especialidad values(5,'Esterilizacion',1.15);

--Insercion Especia
insert into especie values(0,'Canino');
insert into especie values(1,'Felino');
insert into especie values(2,'Aves');
insert into especie values(3,'Reptiles');
insert into especie values(4,'Roedores');
insert into especie values(5,'Equinos');

--Insercion Veterinario
insert into veterinario values(1458236972, 'CC',4587523654,'Tyler','Okonma',3);
insert into veterinario values(1452087452,'CE',1452014786,'Thebe','Kgositsile',5);
insert into veterinario values(1254789632,'CC',3164978451,'Frank','Ocean',1);
insert into veterinario values(1402547896,'CC',9875463120,'Travis','Scott',2);
insert into veterinario values(1202547896,'CC',7412541203,'Jordan','Carter',3);
insert into veterinario values(1254785214,'CE',5201245789,'Denzel','Curry',4);
insert into veterinario values(1025478963,'CE',3201254782,'Billy','Idol',1);
insert into veterinario values(1205474147,'CE',6320214587,'Chet','Baker',2);
insert into veterinario values(1205875632,'CC',1421025478,'Miles','Davis',4);
insert into veterinario values(1420132569,'CC',6320256325,'Kanye','West',5);

--Insercion mascota
insert into mascota values(1,'Thugger',TO_DATE('2010/04/30','YYYY/MM/DD'),1,'CC',1456456358);
insert into mascota values(2,'Uzi',TO_DATE('2011/11/15','YYYY/MM/DD'),3,'CE',1799763456);
insert into mascota values(3,'Savage',TO_DATE('2010/10/11','YYYY/MM/DD'),0,'CC',1657984351);
insert into mascota values(4,'Yachty',TO_DATE('2012/08/12','YYYY/MM/DD'),4,'CC',1238789413);
insert into mascota values(5,'Carti',TO_DATE('2015/07/06','YYYY/MM/DD'),2,'CC',1234843186);
insert into mascota values(6,'Earl',TO_DATE('2016/02/08','YYYY/MM/DD'),3,'CC',1345864312);
insert into mascota values(7,'Rocky',TO_DATE('2010/01/20','YYYY/MM/DD'),0,'CE',1479674652);
insert into mascota values(8,'Pierre',TO_DATE('2011/03/23','YYYY/MM/DD'),2,'CE',1535735580);
insert into mascota values(9,'Gunna',TO_DATE('2012/05/28','YYYY/MM/DD'),1,'CE',1640364078);
insert into mascota values(10,'Lucki',TO_DATE('2013/10/12','YYYY/MM/DD'),5,'CC',1056378590);

--Insercion visitas
insert into visitas(id_visita,id_mascota,tipo,fecha_ingreso,fecha_egreso,motivo_visita,numero_doc_vet,tipo_doc_vet,costo) values (1,1,'CONSULTA',TO_DATE('2019/08/30 13:05:14','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2019/08/30 09:00:15','YYYY/MM/DD HH24:MI:SS'),'CAIDA DE PELO',1420132569,'CC',NULL);
insert into visitas(id_visita,id_mascota,tipo,fecha_ingreso,fecha_egreso,motivo_visita,numero_doc_vet,tipo_doc_vet,costo) values (2,3,'CONSULTA',TO_DATE('2019/08/29 23:55:55','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2019/08/29 09:05:05','YYYY/MM/DD HH24:MI:SS'),'ESCREMENTO LIQUIDO',1452087452,'CE',NULL);
insert into visitas(id_visita,id_mascota,tipo,fecha_ingreso,fecha_egreso,motivo_visita,numero_doc_vet,tipo_doc_vet,costo) values (3,5,'CONSULTA',TO_DATE('2019/08/28 09:49:59','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2019/08/28 09:15:00','YYYY/MM/DD HH24:MI:SS'),'PATA LASTIMADA',1254785214,'CE',NULL);
insert into visitas(id_visita,id_mascota,tipo,fecha_ingreso,fecha_egreso,motivo_visita,numero_doc_vet,tipo_doc_vet,costo) values (4,2,'HOSPITALIZACION',TO_DATE('2019/08/20 06:06:06','YYYY/MM/DD HH24:MI:SS'),NULL,'DESCAMACION SEVERA',1402547896,'CC',NULL);
insert into visitas(id_visita,id_mascota,tipo,fecha_ingreso,fecha_egreso,motivo_visita,numero_doc_vet,tipo_doc_vet,costo) values (5,4,'HOSPITALIZACION',TO_DATE('2019/08/15 12:01:23','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2019/08/23 09:30:02','YYYY/MM/DD HH24:MI:SS'),'CAIDA DE GRAN ALTURA',1254785214,'CE',NULL);
insert into visitas(id_visita,id_mascota,tipo,fecha_ingreso,fecha_egreso,motivo_visita,numero_doc_vet,tipo_doc_vet,costo) values (6,6,'HOSPITALIZACION',TO_DATE('2019/08/22 14:19:14','YYYY/MM/DD HH24:MI:SS'),NULL,'BACTERIA ESTOMACAL',1254789632,'CC',NULL);

--Insercion Notas
insert into notas values(1,TO_DATE('2019/08/30 11:06:11','YYYY/MM/DD HH24:MI:SS'),'El felino presenta caida de pelo severa y ,se encontro que es gracias a unos quimicos utilizados para limpiar el piso en la casa de los dueños');
insert into notas values(2,TO_DATE('2019/08/29 23:06:14','YYYY/MM/DD HH24:MI:SS'),'Se le atribuye el problema del excremento liquido al consumo de lacteos diariamente, se le recomendo al dueño dejar de darle este tipo de alimentos a su mascota');
insert into notas values(3,TO_DATE('2019/08/28 01:46:18','YYYY/MM/DD HH24:MI:SS'),'La lesion en la pata derecha del loro, fue causada por un descuido del dueño, al soltarlo de la jaula mientras este se encontraba alterado, la lesion es solo un golpe y no tuvo daño oseo');
insert into notas values(4,TO_DATE('2019/08/21 05:33:33','YYYY/MM/DD HH24:MI:SS'),'La descamacion de la babilla, es causada por el agua contaminada en la que habitaba');
insert into notas values(5,TO_DATE('2019/08/24 09:10:11','YYYY/MM/DD HH24:MI:SS'),'El Hamster fue dejado caer desde un armario,ya que el hijo del dueño quizo jugar con el. No hubo ninguna lesion');
insert into notas values(6,TO_DATE('2019/08/23 13:13:13','YYYY/MM/DD HH24:MI:SS'),'El reptil consumio accidentalmente su excremento y adquirio salmonelosis');


