--ACTUALIZACION DE COSTOS EN LA TABLA PRINCIPAL DE VISITAS
update visitas
set visitas.costo =
((select update_h.costo from update_h  where update_h.id_visita = visitas.id_visita) union
(select update_c.costo from update_c  where update_c.id_visita = visitas.id_visita) );
--commit;
rollback;
