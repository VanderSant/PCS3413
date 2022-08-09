update deptos
set orcamentoglobaldepto = null 
where sigladepto = 'VEND';

select sum(orcamentoglobaldepto), count(orcamentoglobaldepto) 
from deptos