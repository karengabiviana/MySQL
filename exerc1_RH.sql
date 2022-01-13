/*Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo.*/
create database db_exerc1_RH;

use db_exerc1_RH;
create table tb_funcionaries
(
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar(255) not null,
cargaHoraria decimal(4,2) not null,
salario decimal(6,2) not null,
primary key (id)
);

insert into tb_funcionaries (nome, cargo, cargaHoraria, salario) values ("Steven", "CEO", 9.0, 9000.00);
insert into tb_funcionaries (nome, cargo, cargaHoraria, salario) values ("Pearl", "Coordenadora", 8.0, 5000.00);
insert into tb_funcionaries (nome, cargo, cargaHoraria, salario) values ("Garnet", "Líder", 8.5, 6500.00);
insert into tb_funcionaries (nome, cargo, cargaHoraria, salario) values ("Ametist", "Assistente administrativa Senior", 7.0, 3500.00);
insert into tb_funcionaries (nome, cargo, cargaHoraria, salario) values ("Connie", "Conselheira da Diretoria", 6.0, 7500.00);

select * from tb_funcionaries where salario > 2000.00;
select * from tb_funcionaries where salario < 2000.00;

select * from tb_funcionaries;

update tb_funcionaries set salario = 9000 where nome = "Steven";
update tb_funcionaries set salario = 1000 where nome = "Ametist";


delete from tb_funcionaries;


