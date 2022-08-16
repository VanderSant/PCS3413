select distinct matricfunc, nomefunc
from funcionarios inner join projetos on
funcionarios.matricfunc = projetos.coordproj