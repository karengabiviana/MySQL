/*Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.*/
create database db_exerc2_Ecommerce;

/*Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.*/
use db_exerc2_Ecommerce;
create table tb_produtos
(
id bigint auto_increment not null,
nome varchar(255) not null,
descricao varchar(255),
quantidade bigint not null,
valor decimal(5,2) not null,

primary key(id)
);

/*Popule esta tabela com até 8 dados;*/
insert into tb_produtos (nome, descricao, quantidade, valor) 
values ("Camiseta Branca","Camiseta gola careca, manga curta, de algodão", 125, 109.90);
insert into tb_produtos (nome, descricao, quantidade, valor) 
values ("Camiseta Estampada","Camiseta gola careca, manga curta, de algodão", 75, 119.90);
insert into tb_produtos (nome, descricao, quantidade, valor) 
values ("Vestido curto","Vestido evasê, decote 'v', manga curta, de viscose", 50, 329.90);
insert into tb_produtos (nome, descricao, quantidade, valor) 
values ("Vestido longo","Vestido longo, alcinhas, de viscolycra", 25, 389.90);
insert into tb_produtos (nome, descricao, quantidade, valor) 
values ("Macacão","Macacão, manga curta, pernas longas, jeans", 30, 559.90);
insert into tb_produtos (nome, descricao, quantidade, valor) 
values ("Calça Jeans Premium","calça flare, lavada, com detalhes em desgaste, jeans", 35, 509.90 );
insert into tb_produtos (nome, descricao, quantidade, valor) 
values ("Sapato Couro Verniz","Sapatos estilo Brogui fechados, em couro e com detalhes em verniz", 24, 615.90);
insert into tb_produtos (nome, descricao, quantidade, valor) 
values ("Bolsa","Bolsa a  tira colo, detalhes e alças em dourado ", 10, 515.90);

/*Faça um select que retorne os produtos com o valor maior do que 500.*/
select * from tb_produtos where valor >500;

/*Faça um select que retorne os produtos com o valor menor do que 500.*/
select * from tb_produtos where valor <500;

/*Ao término atualize um dado desta tabela através de uma query de atualização.*/
update tb_produtos set valor = 499.0 where nome = "Calça Jeans Premium";