/*Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.*/
create database db_exerc3_Escola;

/*Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola.*/
use db_exerc3_Escola;
create table tb_alunes
(
id bigint auto_increment not null,
nome varchar(255) not null,
classe varchar(10) not null,
data_nascimento date not null,
nota decimal(2,2) not null,
primary key (id)
);

/*Popule esta tabela com até 8 dados;*/
insert into tb_alunes (nome, classe, data_nascimento, nota) 
values ("Felipe","3ºA", "2004-05-07", "7,8");
insert into tb_alunes (nome, classe, data_nascimento, nota) 
values ("Guilherme","3ºB", "2004-05-08", "8");
insert into tb_alunes (nome, classe, data_nascimento, nota) 
values ("Angela","1ºD", "2006-07-02", "5,25");
insert into tb_alunes (nome, classe, data_nascimento, nota) 
values ("Bruna","2ºB", "2005-12-20", "7,25");
insert into tb_alunes (nome, classe, data_nascimento, nota) 
values ("Breno","3ºC", "2004-07-024", "9,5");
insert into tb_alunes (nome, classe, data_nascimento, nota) 
values ("Ana","2ºA", "2005-01-15", "4,5");
insert into tb_alunes (nome, classe, data_nascimento, nota) 
values ("Roberta","3ºD", "2004-09-22", "6,75");
insert into tb_alunes (nome, classe, data_nascimento, nota) 
values ("Jailson","1ºA", "2006-10-31", "8,25");

/*atualize um dado desta tabela através de uma query de atualização.*/
alter table tb_alunes modify nota varchar(30);

/*Faça um select que retorne o/as estudantes com a nota maior do que 7.*/
select * from tb_alunes where nota <7;
/*Faça um select que retorne o/as estudantes com a nota menor do que 7.*/
select * from tb_alunes where nota >7;
