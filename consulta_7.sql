-- T1: todas las mascotas que alguna vez fueron hospitalizadas
-- T2: mascotas que fueron hospitalizadas y posteriormente fueron llevadas a Consulta
-- T3: mascotas que fueron llevadas a hospitalizar pero no tuvieron consulta posteriores
-- T4: mascotas que fueron hospitalizadas, y llevadas a consultas despues de un plazo de 7 dias
-- T5: union de las tablas 3 y 4
-- T6: asociacion con todos los datos de las mascota
with tabla1 as (select id_mascota, fecha_egreso
from visitas V1
where fecha_egreso is not null and tipo like 'HOSPITALIZACION'),
tabla2 as (
select id_mascota, fecha_ingreso fecha_consulta
from visitas V
where tipo like 'CONSULTA' and fecha_ingreso > some(select tabla1.fecha_egreso from tabla1 where tabla1.id_mascota = V.id_mascota)
), tabla3 as (
select *
from tabla1
where id_mascota not in (select id_mascota from tabla2)),
tabla4 as (
  select id_mascota, fecha_egreso
  from tabla1 natural inner join tabla2
  where tabla2.fecha_consulta -  tabla1.fecha_egreso > 7
),tabla5 as
((select id_mascota
from tabla3)
union
(select id_mascota
from tabla4)), tabla6 as(
select *
from tabla5 natural inner join mascota)
select * 
--from tabla6;
from tabla6, dueno
where tabla6.num_doc_dueno = dueno.num_doc_dueno;