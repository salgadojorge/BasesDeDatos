---Consulta 5

--VISTA PARA ACTUALIZAR CONSULTAS
create view update_c
as  with consultas_p as (
select *
from visitas natural join veterinario natural join especialidad
where tipo like 'CONSULTA')
select id_visita,factor_costo*50000 as "COSTO"
from consultas_p;
--VISTA PARA ACTUALIZAR HOSPITALIZACION
create view update_H
as 
with hospitalizaciones_p as (
select *
from visitas natural join veterinario natural join especialidad
where tipo like 'HOSPITALIZACION')
select id_visita,tipo,fecha_ingreso,fecha_egreso,motivo_visita,id_mascota,numero_doc_vet,tipo_doc_vet,-(fecha_ingreso - (case when fecha_egreso is null then to_date(sysdate) else fecha_egreso end))*factor_costo*70000 as "COSTO" 
from hospitalizaciones_p;
commit;
--ACTUALIZACION DE COSTOS EN LA TABLA PRINCIPAL DE VISITAS
update visitas
set visitas.costo =
((select update_h.costo from update_h  where update_h.id_visita = visitas.id_visita) union
(select update_c.costo from update_c  where update_c.id_visita = visitas.id_visita));
commit;
--BORRAMOS LAS VISTAS AUXILIARES
drop view update_h;
drop view update_c;
commit;
--rollback;
