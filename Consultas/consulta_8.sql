--CONSULTA 8
with tabla1 as (
select dueno.num_doc_dueno Documento,concat(dueno.nombre,concat(' ',dueno.apellidos))"NOMBRE DUENO",dueno.correo"CORREO DUENO",mascota.nombre"NOMBRE MASCOTA",mascota.id_mascota from dueno,mascota where dueno.num_doc_dueno=mascota.num_doc_dueno and dueno.tipo_doc_dueno = mascota.tipo_doc_dueno)
,tabla2 as (select id_mascota,nota,fecha_nota from visitas natural join notas group by id_mascota,nota,fecha_nota)
select distinct tabla1."NOMBRE DUENO",tabla1."CORREO DUENO",tabla1."NOMBRE MASCOTA",listagg(nota,';') within group(order by tabla2.fecha_nota) over (partition by tabla2.id_mascota )"RESUMEN"from tabla1,tabla2 where tabla1.id_mascota=tabla2.id_mascota ;
