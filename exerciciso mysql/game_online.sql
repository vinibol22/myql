create database db_generation_game_online2;
 use db_generation_game_online2;
 
 create table tb_classe(
	id bigint auto_increment ,
    decricao varchar(255),
    poderespecial varchar(255),
    pontosdeataque int ,
    pontosdedefesa int,
    primary key(id)
 );
 
insert into tb_classe (decricao, poderespecial,pontosdeataque,pontosdedefesa) values ("Mago","bola de fogo",14596,787);
insert into tb_classe (decricao,poderespecial,pontosdeataque,pontosdedefesa) values ("arqueiro","flechada",4526,565);
insert into tb_classe (decricao, poderespecial,pontosdeataque,pontosdedefesa) values ("gladiador","poder da espada",5454,878);
insert into tb_classe (decricao, poderespecial,pontosdeataque,pontosdedefesa) values ("gladiador","poder da espada",5454,1100);
insert into tb_classe (decricao, poderespecial,pontosdeataque,pontosdedefesa) values ("cão","mordida",5454,1100);

   select * from tb_classe;


 
 
 create table tb_personagem (
	id bigint auto_increment,
    nome varchar(255) ,
    sexo varchar(255),
    idade int,
    alturaemcm int,
    humano boolean,
    class_id bigint ,
    
	
    
    primary key(id),
    FOREIGN KEY (class_id) REFERENCES tb_classe(id)
    
 );
 insert into tb_personagem (nome,sexo,idade,alturaemcm,humano,class_id) values ("allan","masculino",45,170,true,1);
  insert into tb_personagem (nome,sexo,idade,alturaemcm,humano,class_id) values ("fernanda","feminino",20,170,true,2);
   insert into tb_personagem (nome,sexo,idade,alturaemcm,humano,class_id) values ("blend","masculino",400,400,false,3);

select * from tb_personagem;
select * from tb_classe where pontosdeataque >2000;
select * from tb_classe where pontosdedefesa between 1000 and 2000;
select * from tb_classe where  decricao like "%c%";
select * from tb_personagem inner join tb_classe on tb_classe.id=tb_personagem.class_id;
select * from tb_classe where decricao = "arqueiro";
select * from tb_personagem inner join tb_classe on tb_classe.id=tb_personagem.class_id where tb_classe.id=2;

