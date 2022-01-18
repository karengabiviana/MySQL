/*Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco
deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as
informações dos produtos desta empresa.*/
create database db_farmacia_do_bem;

/*O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.*/
use db_farmacia_do_bem;

create table  tb_categoria
/*Determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.*/
(
id bigint auto_increment not null,
tipo varchar(100) not null,
status_tipo boolean not null,
primary key (id)
);

create table tb_produto
/*Determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia(não
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
insert into tb_categoria (tipo, status_tipo) 
	values 
		("Controlados",true),
		("Não-Controlados",true),
		("Higiene",true),
		("Perfumaria e Beleza",true),
		("Promoções",false);

/*Popule esta tabela produto com até 8 dados.*/
insert into tb_produto (nome, preco, descricao,id_categoria) 
	values 
		("Dipirona",1.99,"Cartela com 4 pílulas de Dipirona 100mg",2),
        ("Sertralina",48.35,"Caixa com 30 unidade de 50mg",1),
        ("Fraldas infantis",38.12,"Pacote de fraldas tamanho M com 10 unidades",3),
        ("Demaquilante",12.65,"Demaquilante bifásico com 100ml",4),
        ("Inalador",98.79,"Inalador elétrico com uma saída",1),
        ("Buscopan",14.10,"Caixa contém 8 pílulas",2),
        ("Absorvente Tampax",23.69,"Absorvente internos com 10 unidades",3),
        ("Protetor labial",4.99,"Protetor lábil roll on com 15ml",4);

/*Faça um select que retorne os Produtos com o valor maior do que 50 reais.*/
select * from tb_produto where preco > 50;

/*Faça um select trazendo os Produtos com valor entre 3 e 60 reais.*/
select * from tb_produto where preco between 3 and 60;

/*Faça um select utilizando LIKE buscando os Produtos com a letra B.*/
select * from tb_produto where nome like "%b%";

/*Faça um um select com Inner join entre tabela categoria e produto.*/
select * from tb_categoria inner join tb_produto
	on tb_categoria.id = tb_produto.id_categoria;
    
/*Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são cosméticos).*/
select * from tb_produto inner join tb_categoria
	on tb_categoria.id = tb_produto.id_categoria where tb_produto.id_categoria =2;