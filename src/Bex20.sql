select tituloproj, codproj, coordproj, nomefunc
from projetos inner join funcionarios on
projetos.coordProj=funcionarios.matricfunc