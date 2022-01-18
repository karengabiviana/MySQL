/*Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
informações dos personagens desse game.*/
create database db_generation_game_online;

/*O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.*/
use db_generation_game_online;

create table tb_classe
/*Determine 3 atributos relevantes da classe para se trabalhar com o serviço desse game Online.*/
(
id bigint auto_increment not null,
classe varchar(100) not null,
habilidade varchar(100) not null,
primary key (id)
);


create table tb_personagem
/*Determine 5 atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online
(não esqueça de criar a foreign key de tb_classe nesta tabela).*/
(
id bigint auto_increment not null,
nome varchar(100),
pontos_vida bigint,
pontos_atk bigint,
classe bigint,
primary key(id),
foreign key (classe) references tb_classe (id)
);

/*Popule esta tabela classe com até 5 dados.*/
insert into tb_classe (classe, habilidade) 
	values ("Sacerdote","Escudo e Poder de Cura");
insert into tb_classe (classe, habilidade) 
	values ("Lançaire","Lança");
insert into tb_classe (classe, habilidade) 
	values ("Espadachim","Espada");
insert into tb_classe (classe, habilidade) 
	values ("Lutadore","Manoplas ou Chicotes");
insert into tb_classe (classe, habilidade) 
	values ("Bardo","Música e Buff");
    
/*Popule esta tabela personagem com até 8 dados.*/
insert into tb_personagem (nome, pontos_vida, pontos_atk,classe) 
	values ("Steven",1000,7500,1);
insert into tb_personagem (nome, pontos_vida, pontos_atk,classe) 
	values ("Greg",1500,1000,5);
insert into tb_personagem (nome, pontos_vida, pontos_atk,classe) 
	values ("Connie",2500,1990,3);
insert into tb_personagem (nome, pontos_vida, pontos_atk,classe) 
	values ("Garnet",10000,8000,4);
insert into tb_personagem (nome, pontos_vida, pontos_atk,classe) 
	values ("Ametist",6000,5000,4);
insert into tb_personagem (nome, pontos_vida, pontos_atk,classe) 
	values ("Pearl",5500,6000,2);
insert into tb_personagem (nome, pontos_vida, pontos_atk,classe) 
	values ("Rose",12000,10000,1);
insert into tb_personagem (nome, pontos_vida, pontos_atk,classe) 
	values ("Stevonnie",12500,9400,3);

/*Faça um select que retorne os personagens com o poder de ataque maior do que 2000.*/
select * from tb_personagem where pontos_atk > 2000;

/*Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.*/
select * from tb_personagem where pontos_atk < 2000;

/*Faça um select utilizando LIKE buscando os personagens com a letra C.*/
select * from tb_personagem where nome like "%c%";

/*Faça um um select com Inner join entre tabela classe e personagem.*/
select * from tb_personagem inner join tb_classe 
	on tb_classe.id = tb_personagem.classe;
    
/*Faça um select onde traga todos os personagem de uma classe específica*/
select * from tb_personagem inner join tb_classe 
	on tb_classe.id = tb_personagem.classe;

select * from tb_personagem inner join tb_classe 
on tb_classe.id = tb_personagem.classe where tb_classe.id = 1;