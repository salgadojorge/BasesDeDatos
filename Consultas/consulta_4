select SUM(nvl(costo,0)) as costo_mes
from visitas
where (to_char(visitas.fecha_ingreso,'YYYY-MM') like to_char(sysdate,'YYYY-MM') and to_char(visitas.fecha_ingreso,'YYYY-MM') like to_char(sysdate,'YYYY-MM'));
