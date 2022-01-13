/*Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo */
create database db_Exerc2_Ecommerce;
use db_Exerc2_Ecommerce;

create table tb_produtos
(
id bigint auto_increment,
nome varchar(255) not null,
descrição varchar(255) not null,
quantidade bigint,
valor double,
primary key (id)
);

insert into tb_produtos (nome, descrição, quantidade, valor) values ("CookieCat Chocolate", "Bolacha chocolate recheada com sorvete de chocolate", 50000, 5.39 );
insert into tb_produtos (nome, descrição, quantidade, valor) values ("CookieCat Morango", "Bolacha baunilha e recheada com sorvete morango", 40000, 5.39 );
insert into tb_produtos (nome, descrição, quantidade, valor) values ("Cheeseburguer backpack", "Mochila com formato de hamburguer", 250, 89.75 );
insert into tb_produtos (nome, descrição, quantidade, valor) values ("Donut", "Rosca confeitada", 1650, 4.8 );
insert into tb_produtos (nome, descrição, quantidade, valor) values ("fish stew pizza", "Pizza recheada com peixe ", 3000, 25);
insert into tb_produtos (nome, descrição, quantidade, valor) values ("Fries Bits", "Pequenas e crocantes batatas fritas ", 100, 8.45);
insert into tb_produtos (nome, descrição, quantidade, valor) values ("G.U.Y.S", "Bonecos colecionáveis direto de Beach City", 1000, 10 );
insert into tb_produtos (nome, descrição, quantidade, valor) values ("Guitarra Greg Universe", "Guitarra autografada por Greg Universe", 1, 7000 );

select * from tb_produtos where valor > 500;
select * from tb_produtos where valor < 500;
