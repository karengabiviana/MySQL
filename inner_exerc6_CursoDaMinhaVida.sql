/*Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco
deverá ter o seguinte nome db_cursoDaMinhaVida, onde o sistema trabalhará com as
informações dos produtos desta empresa.*/
create database db_cursoDaMinhaVida;

/*O sistema trabalhará com 2 tabelas tb_curso e tb_categoria.*/
use db_cursoDaMinhaVida;

create table  tb_categoria
/*Determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço deste site de cursos onlines*/
(
id bigint auto_increment not null,
tipo varchar(100) not null,
carga_horaria varchar(100) not null,
primary key (id)
);

create table tb_curso
/*Determine 5 atributos relevantes dos tb_curso para se trabalhar com o serviço deste site de cursos onlines (não
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
insert into tb_categoria (tipo, carga_horaria) 
	values 
		("Pós Graduação","80 horas mensais"),
		("Licenciatura","100 horas mensais"),
		("Bacharelado","100 horas mensais"),
		("Tecnólogo","90 horas mensais"),
		("Cursos livres","60 horas curso completo");

/*Popule esta tabela cursos com até 8 dados.*/
insert into tb_curso (nome, preco, descricao ,id_categoria) 
	values 
		("Gerenciamento de Projeto",1500,"Focado em metodologias Ágiles",1),
        ("Pedagogia",800,"Com foco no docência e educação",2),
        ("Engenharia de Software",900,"Desenvolvimento de software e pesquisa em Tecnologia",3),
        ("Design de Experiência do Usuário",500,"Metodologia de pesquisas, testes, protótipo com ênfase no usuário",4),
        ("Git e Git Hub",200,"curso introdutório ao Gerenciamento de versões",5),
        ("Lógica de Programação",180,"Curso introdutório à lógica para programação",5),
        ("HTML",250,"Curso básico de HTML",5),
        ("Figma",130,"introdução a ferramenta para prototipação de tela, Figma",5);

/*Faça um select que retorne os cursos com o valor maior do que 400 reais.*/
select * from tb_curso where preco > 400;

/*Faça um select trazendo os cursos com valor entre 100 e 600 reais.*/
select * from tb_curso where preco between 100 and 600;

/*Faça um select utilizando LIKE buscando os cursos com a letra J.*/
select * from tb_curso where nome like "%j%";

/*Faça um um select com Inner join entre tabela categoria e produto.*/
select * from tb_categoria inner join tb_curso
	on tb_categoria.id = tb_curso.id_categoria;
    
/*Faça um select onde traga todos os Produtos de uma categoria específica .*/
select * from tb_curso inner join tb_categoria
	on tb_categoria.id = tb_curso.id_categoria where tb_curso.id_categoria =5;