select cargofunc, count(distinct nomefunc) , max(salariofunc)
from funcionarios
group by cargofunc