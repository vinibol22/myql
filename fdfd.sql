create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255),
qtdestoque int ,
qtdvendida int ,tb_postagens
importada boolean default false,
primary key (id)
); 
insert into tb_categoria(descricao,qtdestoque,qtdvendida,importada)value("carne de boi",40,600);
insert into tb_categoria(descricao,qtdestoque,qtdvendida,importada)value("frango",120,65);
insert into tb_categoria(descricao,qtdestoque,qtdvendida,importada)value("carne de porco",120,45);
insert into tb_categoria(descricao,qtdestoque,qtdvendida,importada)value("frango",190,70,true);
insert into tb_categoria(descricao,qtdestoque,qtdvendida,importada)value("carne de boi",35,184,true);

select * from tb_categoria