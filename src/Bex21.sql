select codproj , count(codproj)
from projetos natural join funcproj
group by codproj

-- CGP	2
-- SGBD	4
-- Pxml	3
-- PMRH	1
-- PCMM	5