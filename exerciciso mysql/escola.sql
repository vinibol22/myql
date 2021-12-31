create database db_escola;
use db_escola;

create table alunos(
id bigint auto_increment,
nome varchar(255)not null,
idade int not null,
serie varchar(255),
numerodasala int,
medianotastotal int,
primary key(id)
);

insert into alunos(nome,idade,serie,numerodasala,medianotastotal)value("vinicius barreto barsoa",15,"3° ano do ensino médio",15,4);
insert into alunos(nome,idade,serie,numerodasala,medianotastotal)value("henrique",10,"2° ano do ensino médio",18,8);
insert into alunos(nome,idade,serie,numerodasala,medianotastotal)value("pedro ",10,"2° ano do ensino médio",16,7);

select * from alunos where medianotastotal>7;
select * from alunos where medianotastotal<7;

update alunos set medianotastotal=5 where id=2;
select * from alunos;