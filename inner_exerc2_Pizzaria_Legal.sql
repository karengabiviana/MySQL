/*Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco
deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as
informações dos produtos desta empresa.*/
create database db_pizzaria_legal;

/*O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.*/
use db_pizzaria_legal;

create table tb_categoria
/*Determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.*/
(
id bigint auto_increment not null,
tipo varchar(100) not null,
tamanho varchar(100) not null,
primary key (id)
);

create table tb_pizza
/*Determine 5 atributos relevantes dos tb_pizza para se trabalhar com o serviço dessa pizzaria
(não esqueça de criar a foreign key de tb_categoria nesta tabela).*/
(
id bigint auto_increment not null,
sabor varchar(100),
preco double,
borda varchar(100) not null,
id_categoria bigint not null,
primary key(id),
foreign key (id_categoria) references tb_categoria (id)
);

/*Popule esta tabela Categoria com até 5 dados.*/
insert into tb_categoria (Tipo, Tamanho) 
	values 
		("Salgada","Brotinho"),
		("Doce","Brotinho"),
		("Salgada","média"),
		("Doce","média"),
		("Salgada","Grande");

/*Popule esta tabela pizza com até 8 dados.*/
insert into tb_pizza (sabor, preco, borda,id_categoria) 
	values 
		("Mussarela",25.99,"simples",1),
        ("Calabreza",27.99,"catupiry",3),
        ("Portugesa",32.99,"cheddar",3),
        ("Frango catupiry",40.99,"simples",5),
        ("Nutella com ninho",25.99,"simples",2),
        ("Choconana",48.99,"brigadeiro",4),
        ("Carne Seca com brócolis",58.99,"3 queijos",5),
        ("Camarão",50.99,"simples",3);

/*Faça um select que retorne os Produtos com o valor maior do que 45 reais.*/
select * from tb_pizza where preco > 45;

/*Faça um select trazendo os Produtos com valor entre 29 e 60 reais.*/
select * from tb_pizza where preco between 29 and 60;

/*Faça um select utilizando LIKE buscando os Produtos com a letra C.*/
select * from tb_pizza where sabor like "%c%";

/*Faça um um select com Inner join entre tabela categoria e pizza.*/
select * from tb_pizza inner join tb_categoria
	on tb_categoria.id = tb_pizza.id_categoria;
    
/*Faça um select onde traga todos os Produtos de uma categoria específica*/
select * from tb_pizza inner join tb_categoria
	on tb_categoria.id = tb_pizza.id_categoria where tb_pizza.id_categoria =3;