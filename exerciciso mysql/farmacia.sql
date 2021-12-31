create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255),
faixapreta boolean default false,

primary key (id)

);

insert into tb_categoria(tipo,faixapreta)value("Alopatico",false);
insert into tb_categoria(tipo,faixapreta)value("genérico",false); 
insert into tb_categoria(tipo,faixapreta)values("manipulado",true);
insert into tb_categoria(tipo,faixapreta)value("fitoterapico",false);
insert into tb_categoria(tipo,faixapreta)value("Homeopático",false);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal not null,
qtdestoque int ,
validade date ,
categoria_id bigint,
primary key(id),

FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)


);

insert into tb_produto(nome,preco,qtdestoque,validade,categoria_id)values("buscopan",30.00,30,"2022-03-25",1);
insert into tb_produto(nome,preco,qtdestoque,validade,categoria_id)values("sectral",330.65,45,"2022-05-15",2);
insert into tb_produto(nome,preco,qtdestoque,validade,categoria_id)values("tylenol",400,75,"2022-03-25",3);
insert into tb_produto(nome,preco,qtdestoque,validade,categoria_id)values("diamox",50,45,"2022-12-02",4);
insert into tb_produto(nome,preco,qtdestoque,validade,categoria_id)values("siliq",30,15,"2025-10-09",5);
insert into tb_produto(nome,preco,qtdestoque,validade,categoria_id)values("veltane",10,13,"2022-03-25",6);
insert into tb_produto(nome,preco,qtdestoque,validade,categoria_id)values("marcaína",150,45,"2027-11-29",7);
insert into tb_produto(nome,preco,qtdestoque,validade,categoria_id)values("azopt",45,78,"2025-03-25",8);

select * from tb_produto;
select * from tb_produto where preco >50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%b%";
select * from tb_produto inner join tb_categoria on tb_categoria.id=tb_produto.categoria_id where tb_categoria.id=2;