select codproj ,tituloproj, count(codproj)
from projetos natural join funcproj
group by codproj
having count(codproj) > 2