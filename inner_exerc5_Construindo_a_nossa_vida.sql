/*Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome
do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, onde o sistema
trabalhará com as informações dos produtos desta empresa.*/
create database db_construindo_a_nossa_vida;

/*O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.*/
use db_construindo_a_nossa_vida;

create table  tb_categoria
/*Determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.*/
(
id bigint auto_increment not null,
tipo varchar(100) not null,
ativo boolean not null,
primary key (id)
);

create table tb_produto
/*Determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço de uma loja de produtos (não
esqueça de criar a foreign key de tb_categoria nesta tabela).*/
(
id bigint auto_increment not null,
nome varchar(100),
preco double,
descricao varchar(255) not null,
id_categoria bigint not null,
primary key(id),
foreign key (id_categoria) references tb_categoria (id)
);

/*Popule esta tabela Categoria com até 5 dados.*/
insert into tb_categoria (tipo, ativo) 
	values 
		("Hidráulico",true),
		("Elétrico",true),
		("Acabamento ",true),
		("Instrumentos",true),
		("Materiais básicos construtores",true);

/*Popule esta tabela produto com até 8 dados.*/
insert into tb_produto (nome, preco, descricao,id_categoria) 
	values 
		("Canos",38.00,"Cano de pvc de meia polegada",1),
        ("Fios",62.00,"Fios para energia",2),
        ("Piso",7.5,"Piso em cerâmica 20cm x 20cm",3),
        ("Serra Makita",160.00,"Maquina para corte da marca Makita",4),
        ("Areia",15.60,"Areia fina",5),
        ("Tijolo",2.00,"Tijolo grande de argila",5),
        ("Tinta",90.50,"Tinta acrílica marca Suvenil",3),
        ("Furadeira",130.90,"Furadeira e Parafusadeira",4);

/*Faça um select que retorne os Produtos com o valor maior do que 50 reais.*/
select * from tb_produto where preco > 50;

/*Faça um select trazendo os Produtos com valor entre 3 e 60 reais.*/
select * from tb_produto where preco between 3 and 60;

/*Faça um select utilizando LIKE buscando os Produtos com a letra c.*/
select * from tb_produto where nome like "%c%";

/*Faça um um select com Inner join entre tabela categoria e produto.*/
select * from tb_categoria inner join tb_produto
	on tb_categoria.id = tb_produto.id_categoria;
    
/*Faça um select onde traga todos os Produtos de uma categoria específica .*/
select * from tb_produto inner join tb_categoria
	on tb_categoria.id = tb_produto.id_categoria where tb_produto.id_categoria =5;