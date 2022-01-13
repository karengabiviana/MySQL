/*Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola.
Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes com a nota maior do que 7.
Faça um select que retorne o/as estudantes com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo*/

create database db_exerc3_Escola;
use db_exerc3_Escola;

create table tb_alunes
(
id bigint auto_increment,
nome varchar(255),
série varchar(255),
sala varchar(255),
nota decimal(2,2),
primary key (id)
);

insert into tb_alunes (nome, série, sala, nota) values ("Karen", "3º Ensino Médio", "A", 09.00);
insert into tb_alunes (nome, série, sala, nota) values ("Angela", "3º Ensino Médio", "B", 7.5);
insert into tb_alunes (nome, série, sala, nota) values ("Breno", "2º Ensino Médio", "D", 9.7);
insert into tb_alunes (nome, série, sala, nota) values ("Jailson", "2º Ensino Médio", "A", 8.0);
insert into tb_alunes (nome, série, sala, nota) values ("Bruno", "1º Ensino Médio", "B", 7.0);
insert into tb_alunes (nome, série, sala, nota) values ("Poliana", "1º Ensino Médio", "C", 3.4);

