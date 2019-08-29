

--Datos Error dueno
--tipo doc invalido
insert into dueno values('DC',1056378591,'Santiago','Escobar',3114697391,'Tokyo','4490 Cherry Blossom Campus', 'santigo1@BD.com'); 
--documento repetido
insert into dueno values('CC',1056378590,'Saiago','Escobar',3114739800,'Tonfyo','4490 Cherry Blossdsom Campus', 'santigo123@BD.com'); 
--email mal escrito
insert into dueno values('CC',1479674642,'Santiago','Escobar',3114297396,'Tokyo','4490 Cherry Blossom Campus', 'santigoBD.com'); 

--Datos Error Insercion Especialidad
--factor costo menor a 1
insert into especialidad values(6,'Neurologia',0.99);
--factor costo mayor a 2
insert into especialidad values(6,'Neurologia',2.01);
--id repetido 
insert into especialidad values(5,'Neurologia',1.10);

--Datos Error Especie
--id unico
insert into especie values(0,'Canino');

--Datos Error Insercion Veterinario
--numero de tarjeta prof repetido
insert into veterinario values(1458236971, 'CC',4587523654,'Tyler','Okonma',3);
--Tipo de id invalido
insert into veterinario values(1458236992, 'CD',4587523254,'Tyler','Okonma',3);

--Datos Error Insercion mascota
--tipo doc invalido 
insert into mascota values(11,'Thugger',TO_DATE('2010/04/30','YYYY/MM/DD'),1,'CD',1456456358);
--id repetido
insert into mascota values(1,'Thugger',TO_DATE('2010/04/30','YYYY/MM/DD'),1,'CC',1456456358);
--id mayor a 999
insert into mascota values(1000,'Thugger',TO_DATE('2010/04/30','YYYY/MM/DD'),1,'CC',1456456358);
--id especie no valido
insert into mascota values(111,'Thugger',TO_DATE('2010/04/30','YYYY/MM/DD'),10,'CC',1456456358);
--id null
insert into mascota values('','Thugger',TO_DATE('2010/04/30','YYYY/MM/DD'),1,'CC',1456456358);
--nombre null
insert into mascota values(11,'',TO_DATE('2010/04/30','YYYY/MM/DD'),10,'CC',1456456358);


--Insercion visitas
--id visita null
insert into visitas(id_visita,id_mascota,tipo,fecha_ingreso,fecha_egreso,motivo_visita,numero_doc_vet,tipo_doc_vet,costo) values ('',1,'CONSULTA',TO_DATE('2019/08/30 13:05:14','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2019/08/30 09:00:15','YYYY/MM/DD HH24:MI:SS'),'CAIDA DE PELO',1420132569,'CC',NULL);
--tipo null 
insert into visitas(id_visita,id_mascota,tipo,fecha_ingreso,fecha_egreso,motivo_visita,numero_doc_vet,tipo_doc_vet,costo) values (1,1,'',TO_DATE('2019/08/30 13:05:14','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2019/08/30 09:00:15','YYYY/MM/DD HH24:MI:SS'),'CAIDA DE PELO',1420132569,'CC',NULL);
--tipo incorrecto
insert into visitas(id_visita,id_mascota,tipo,fecha_ingreso,fecha_egreso,motivo_visita,numero_doc_vet,tipo_doc_vet,costo) values (1,1,'Consuioiha',TO_DATE('2019/08/30 13:05:14','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2019/08/30 09:00:15','YYYY/MM/DD HH24:MI:SS'),'CAIDA DE PELO',1420132569,'CC',NULL);
--Fecha ingreso nulo
insert into visitas(id_visita,id_mascota,tipo,fecha_ingreso,fecha_egreso,motivo_visita,numero_doc_vet,tipo_doc_vet,costo) values (1,1,'CONSULTA',NULL,TO_DATE('2019/08/30 09:00:15','YYYY/MM/DD HH24:MI:SS'),'CAIDA DE PELO',1420132569,'CC',NULL);
--Motivo de visita nulo
insert into visitas(id_visita,id_mascota,tipo,fecha_ingreso,fecha_egreso,motivo_visita,numero_doc_vet,tipo_doc_vet,costo) values (1,1,'CONSULTA',TO_DATE('2019/08/30 13:05:14','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2019/08/30 09:00:15','YYYY/MM/DD HH24:MI:SS'),NULL,1420132569,'CC',NULL);
--Id mascota nulo
insert into visitas(id_visita,id_mascota,tipo,fecha_ingreso,fecha_egreso,motivo_visita,numero_doc_vet,tipo_doc_vet,costo) values (1,NULL,'CONSULTA',TO_DATE('2019/08/30 13:05:14','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2019/08/30 09:00:15','YYYY/MM/DD HH24:MI:SS'),'CAIDA DE PELO',1420132569,'CC',NULL);
--Numero de doc veterinario nulo
insert into visitas(id_visita,id_mascota,tipo,fecha_ingreso,fecha_egreso,motivo_visita,numero_doc_vet,tipo_doc_vet,costo) values (1,1,'CONSULTA',TO_DATE('2019/08/30 13:05:14','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2019/08/30 09:00:15','YYYY/MM/DD HH24:MI:SS'),'CAIDA DE PELO',NULL,'CC',NULL);


--Datos Error Notas
--Nota null
insert into notas values(1,TO_DATE('2019/08/30 11:06:11','YYYY/MM/DD HH24:MI:SS'),'');
