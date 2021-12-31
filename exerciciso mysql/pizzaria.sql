create database db_pizzaria_legal;
use db_pizzaria_legal;
create table tb_categoria(

id bigint auto_increment,
nome varchar(255)not null,
preco int not null,

primary key (id)

);
insert into tb_categoria(nome,preco)value("baião de 2",25);
insert into tb_categoria(nome,preco)value("chuva de chocolate",70);
insert into tb_categoria(nome,preco)value("popeye",65);
insert into tb_categoria(nome,preco)value("chico",45);
insert into tb_categoria(nome,preco)value("pororo",30); 

select * from tb_categoria;



create table tb_pizza(
id bigint auto_increment,
tamanho varchar(255),
sabor varchar(255),
pizzadoce boolean default false,
categoria_id bigint,


primary key (id),
foreign key (categoria_id) references tb_categoria(id)

);
insert into tb_pizza(tamanho,sabor,pizzadoce,categoria_id)value("familia","mussarela com calabresa",false,1);
insert into tb_pizza(tamanho,sabor,pizzadoce,categoria_id)value("média","brigadeiro",true,2);
insert into tb_pizza(tamanho,sabor,pizzadoce,categoria_id)value("pequena","brócolis",false,3);
insert into tb_pizza(tamanho,sabor,pizzadoce,categoria_id)value("pequena","banana com leite condensado",true,4);
insert into tb_pizza(tamanho,sabor,pizzadoce,categoria_id)value("familia","bacon com mussarela",false,5);
insert into tb_pizza(tamanho,sabor,pizzadoce,categoria_id)value("familia","atum com mussarela",false,6);
insert into tb_pizza(tamanho,sabor,pizzadoce,categoria_id)value("media","alho poró com mussarela",false,7);
insert into tb_pizza(tamanho,sabor,pizzadoce,categoria_id)value("familia","chocolate com morango",true,8);


select * from tb_pizza;


select * from tb_categoria where preco > 45;
select * from tb_categoria where preco between 29 and 60;
select * from tb_categoria where nome like "%c%";
select tb_categoria.nome,tb_pizza.tamanho,tb_pizza.sabor,tb_pizza.pizzadoce 
from tb_pizza inner join tb_categoria on tb_categoria.id=tb_pizza.categoria_id;

select * from tb_pizza where pizzadoce = true ;
