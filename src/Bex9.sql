select distinct nomefunc , matricfunc 
from funcionarios inner join projetos on 
funcionarios.matricfunc = projetos.coordproj 