select cargofunc, count(distinct matricfunc), avg(salariofunc)
from funcionarios
group by cargofunc