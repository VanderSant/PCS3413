select codproj, count(matricfunc)
from funcproj
group by codproj
having count(matricfunc) > 2