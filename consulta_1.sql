with  tabla1(fecha_ingreso, motivo_visita, numero_doc_vet,id_mascota) as (
select fecha_ingreso, motivo_visita, numero_doc_vet,id_mascota
from visitas
where tipo like 'HOSPITALIZACION' and fecha_egreso is null), 
tabla2 (fecha_ingreso, motivo_visita, nombres, apellido_veterinario,id_mascota) as (
select fecha_ingreso, motivo_visita, nombres, apellidos,id_mascota
from tabla1 natural join veterinario), 
tabla3 (fecha_ingreso, motivo_visita, nombres, apellido_veterinario,nombre_mascota,tipo_doc,num_doc) as (
    select fecha_ingreso, motivo_visita, nombres,apellido_veterinario,nombre, tipo_doc_dueno, numero_doc_dueno
    from tabla2 natural inner join mascota
) 
--select *
--from tabla3;
select fecha_ingreso, motivo_visita, nombres nombre_veterinario, apellido_veterinario,nombre_mascota, nombre nombre_dueno,apellidos apellido_dueno
from tabla3  natural inner join dueno;


