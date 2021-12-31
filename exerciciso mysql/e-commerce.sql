create database db_ecommerce;
use db_ecommerce;
create table produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal not null,
marca varchar(255),
cores varchar(255),
estado varchar(255),
linha varchar(255),
 
primary key(id)
);
insert into produtos(nome,quantidade,preco,marca,cores,estado,linha)value("caderno",100,20,"panini","azul","novo","surfe");
insert into produtos(nome,quantidade,preco,marca,cores,estado,linha)value("celular",50,3000,"sansung","cinza","novo","s10");
insert into produtos(nome,quantidade,preco,marca,cores,estado,linha)value("nootbook",45,20000,"aplle","preto","novo","mecbook-3");

select * from produtos where preco>500;
select * from produtos where preco<500;

update produtos set preco=3500.50 where id=3;
select * from produtos;