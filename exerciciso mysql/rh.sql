create database db_rh;
use db_rh;

create table funcionarios(
id bigint auto_increment,
nome varchar(255)not null,
idade int,
salario decimal (8,2) not null,
funcao varchar(255),
primary key(id)

);



insert into funcionarios(nome,idade,salario,funcao)value("vinicius barreto",23,3658,"analista de software");
insert into funcionarios(nome,idade,salario,funcao)value("alcione pereira",56,5500.5,"gerente de projetos");
insert into funcionarios(nome,idade,salario,funcao)value("pedro henrique",44,1000,"segurança");

select * from funcionarios where salario>2000;
select * from funcionarios where salario<2000;

update funcionarios set salario=1500 where id=3;
select * from funcionarios ;