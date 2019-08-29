--Consulta 3

select to_char(fecha_ingreso,'YYYY-MM') MES,tipo,count(*) numero_de_visitas
from visitas
group by to_char(fecha_ingreso,'YYYY-MM'),tipo;
