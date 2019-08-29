--consulta 6

insert into visitas
values( 7,'CONSULTA', to_date(sysdate), to_date(sysdate), 'Perro inseguro del query', 1, 1420132569, 'CC', null  );

insert into notas(id_visita,fecha_nota, nota)
select visitas.id_visita, to_date(sysdate),concat('NOTA AUTOMATICA',concat(' ',to_date(sysdate)))
from visitas
where to_date(sysdate) like fecha_ingreso;


rollback;