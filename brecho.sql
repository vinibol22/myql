create database db_brecho;
use db_brecho;
create table produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal not null,
primary key(id)
);

insert into produtos(nome,quantidade,preco)value("camiseta",50,20.00);
insert into produtos(nome,quantidade,preco)value("calça",25,15.50);
insert into produtos(nome,quantidade,preco)value("blusão",58,4.00);

select * from produtos;
alter table produtos modify preco decimal (8,2);
update produtos set preco=15.50 where id=2;
delete from produtos where id=4 or id=6 or id=3;

insert into produtos(nome,quantidade,preco)value("bermuda",75,5.45);

alter table produtos add descricao varchar(255);
alter table produtos drop descricao ;
alter table produtos change  nome nomeproduto varchar(255) ;