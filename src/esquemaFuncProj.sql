-- drop table funcproj;
-- drop table projetos;
-- drop table funcionarios;
-- drop table deptos;

create table Funcionarios (
matricFunc numeric(10),
nomeFunc varchar(30) not null,
cargoFunc varchar(30),
salarioFunc numeric(9,2),
primary key (matricFunc));

insert into funcionarios values (203,'Ester dos Anjos','presidente',90000);
insert into funcionarios values (202,'Fabio Almeida','analista de sistemas',3000);
insert into funcionarios values (220,'Angelina Almeida','analista de sistemas',3000);
insert into funcionarios values (204,'Maria dos Santos','analista de sistemas',2500);
insert into funcionarios values (205,'Maria dos Santos','analista de vendas',2500);
insert into funcionarios values (206,'Gustavo dos Santos','gerente de vendas',7500);
insert into funcionarios values (207,'Luiza Braz Lima','DBA',7000);
Insert into funcionarios values (230,'Debora Pereira','pesquisador1',7500);
Insert into funcionarios values (231,'Fabiola Rodrigues','pesquisador3',5000);
Insert into funcionarios values (233,'Antonio Pereira','pesquisador3',5000);
Insert into funcionarios values (235,'Fernando Lima Barreto','pesquisador2',6700);
Insert into funcionarios values (1,'Severino Cavalcanti','assessor da presidencia',7500);
Insert into funcionarios values (232,'Joana Cavalcanti','auxiliar',3000);
Insert into funcionarios values (444, 'Debora Pereira', 'analista de vendas', 2750);


create table Deptos (
siglaDepto varchar(6),
nomeDepto varchar(30) not null,
orcamentoGlobalDepto numeric(12,2),
numeroFuncionariosDepto numeric(3),
primary key (siglaDepto));

insert into Deptos values ('INFO','Informatica',2000000,5);
insert into Deptos values ('VEND','vendas',800000,1);
insert into Deptos values ('PRES','Presidencia',20000000,1);
insert into Deptos values ('PESQ','Pesquisa e Desenvolvimento',500000,0);



create table Projetos (
codProj varchar(4),
tituloProj varchar(50),
orcamento numeric(12,2),
prazoProj numeric(2),
unidadePrazo varchar(7),
coordProj numeric(10) not null,
siglaDepto varchar(6) not null,
primary key (codProj));

Alter table Projetos
add check (unidadePrazo in ('dia','dias','mes','meses', 'ano','anos'));

Alter table Projetos 
add foreign key (CoordProj) references Funcionarios;

Alter table Projetos 
add foreign key (siglaDepto) references Deptos;

insert into Projetos values ('Pxml','Projeto XML',300000,2,'anos',220,'INFO');
insert into Projetos values ('PCMM','Projeto Modelo de Capacitacao para Maturidade',3000000,5,'anos',205,'INFO');
insert into Projetos values ('PMRH','Projeto Manutencao Sistema RH Folha',100000,6,'meses',220,'INFO');
Insert into projetos values ('CGP', 'Companhia de Gerencia de Projeto', 500000,5,'meses', 1, 'PRES');
Insert into projetos values ('SGBD', 'Novo SGBD PostgreSql', 20000,1,'ano', 230, 'PESQ');


create table FuncProj (
codProj varchar(4),
matricFunc numeric(10),
totalHorasMes numeric(3) not null,
primary key (codProj,matricFunc));

alter table FuncProj
add foreign key (codProj) references Projetos;

alter table FuncProj
add foreign key (matricFunc) references Funcionarios;

insert into FuncProj values ('Pxml',220,40);
insert into FuncProj values ('Pxml',204,80);
insert into FuncProj values ('Pxml',202,120);
insert into FuncProj values ('PCMM',205,60);
insert into FuncProj values ('PCMM',220,80);
insert into FuncProj values ('PMRH',220,40);
insert into FuncProj values ('PCMM',204,80);
insert into FuncProj values ('PCMM',202,40);
insert into FuncProj values ('PCMM',207,40);

insert into funcproj values ('CGP', 1,10);
insert into funcproj values ('CGP', 232,80);
insert into funcproj values ('SGBD',235,120);
insert into funcproj values ('SGBD', 233,40);
insert into funcproj values ('SGBD', 231,80);
insert into funcproj values ('SGBD', 230,40);

