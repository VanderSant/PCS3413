select codproj, tituloproj, nomedepto
from projetos inner join deptos on
projetos.siglaDepto = deptos.siglaDepto