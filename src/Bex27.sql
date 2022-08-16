Alter table funcionarios add siglaDepto varchar(6);

Update funcionarios
Set siglaDepto = 'INFO'
Where matricfunc in (202,220,204,207);

Update funcionarios
Set siglaDepto = 'PRES'
Where matricfunc in (203,1);

Update funcionarios
Set siglaDepto = 'PESQ'
Where matricfunc in (230,231,233,235);

Update funcionarios
Set siglaDepto = 'VEND'
Where matricfunc in (444,232,205,206); 