with tabla1 as(
select numero_doc_vet,tipo_doc_vet, count(*) "NUMERO DE CONSULTAS"
from visitas natural right join veterinario
where tipo like 'CONSULTA'
group by numero_doc_vet,tipo_doc_vet),tabla2 as(
select numero_doc_vet,tipo_doc_vet, count(*) "NUMERO DE HOSPITALIZACIONES"
from visitas natural right join veterinario
where tipo like 'HOSPITALIZACION'
group by numero_doc_vet,tipo_doc_vet
),tabla3 as(
select *
from tabla1 natural full outer join tabla2)
select NOMBRES,APELLIDOS,NUMERO_DOC_VET "No. DOCUMENTO VET.",tipo_doc_vet "TIPO DE DOCUMENTO",NUMERO_TARJETA_PROFESIONAL "No. TARJETA PROFESIONAL",ID_ESPECIALIDAD "ID ESPECIALIDAD",nvl(tabla3."NUMERO DE CONSULTAS",0)"NUMERO DE CONSULTAS",nvl(tabla3."NUMERO DE HOSPITALIZACIONES",0) "NUMERO DE HOSPITALIZACIONES"
from tabla3 natural full outer join veterinario;
rollback;
