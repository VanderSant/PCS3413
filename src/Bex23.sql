select codproj, matricfunc, nomefunc, salariofunc
from funcionarios natural join funcproj
where funcionarios.salariofunc = (select min(salariofunc) from funcionarios)