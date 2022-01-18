/*Crie um banco de dados para um serviço de um açougue ou uma quitanda, o nome do
banco deverá ter o seguinte nome db_cidade_das_carnes ou db_cidade_das_frutas, onde o
sistema trabalhará com as informações dos produtos desta empresa.*/
create database db_cidade_das_frutas;

/*O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.*/
use db_cidade_das_frutas;

create table  tb_categoria
/*Determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço dessa quitanda.*/
(
id bigint auto_increment not null,
tipo varchar(100) not null,
unid_medida varchar(100) not null,
primary key (id)
);

create table tb_produto
/*Determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço desta quitanda(não
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
insert into tb_categoria (tipo, unid_medida) 
	values 
		("Peso","R$ por Kilo"),
		("Unidade","R$ por unidade"),
		("Dúzia","R$ cada 12 unidades"),
		("Pacote","R$ por embalagem"),
		("Litro","R$ por litro");

/*Popule esta tabela produto com até 8 dados.*/
insert into tb_produto (nome, preco, descricao,id_categoria) 
	values 
		("Tomate",8.99,"Tomate Italiano",1),
        ("Alface",1.99,"Pé de alface Crespa",2),
        ("Banana",3.50,"Banana Nanica",3),
        ("Maçã",16.00,"Maçã gala Turma da Mônica",4),
        ("Leite Fresco",5.60,"Leite fresco direto da Fazenda",5),
        ("Cereja",61.00,"Cereja fresca importada",1),
        ("Mamão",6.75,"Mamão Papaia",2),
        ("Manga",7.99,"Manga Rosa",1);

/*Faça um select que retorne os Produtos com o valor maior do que 50 reais.*/
select * from tb_produto where preco > 50;

/*Faça um select trazendo os Produtos com valor entre 3 e 60 reais.*/
select * from tb_produto where preco between 3 and 60;

/*Faça um select utilizando LIKE buscando os Produtos com a letra B.*/
select * from tb_produto where nome like "%c%";

/*Faça um um select com Inner join entre tabela categoria e produto.*/
select * from tb_categoria inner join tb_produto
	on tb_categoria.id = tb_produto.id_categoria;
    
/*Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos).*/
select * from tb_produto inner join tb_categoria
	on tb_categoria.id = tb_produto.id_categoria where tb_produto.id_categoria =4;