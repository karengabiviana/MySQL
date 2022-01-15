/*Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.*/
create database db_exerc_RH;

/*Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.*/
use db_exerc_RH;
create table tb_funcionaries
(
id bigint auto_increment not null,
nome varchar(255) not null,
cargo varchar(255)not null,
carga_Hora_Semanal decimal(2,2)not null,
salario decimal(6,2)not null,
primary key (id)
);

/*Atualize um dado desta tabela através de uma query de atualização.*/
alter table tb_funcionaries modify carga_Hora_Semanal varchar(30);

/*Popule esta tabela com até 5 dados;*/
insert into tb_funcionaries (nome, cargo, carga_Hora_Semanal, salario) 
values ("Steven","CEO", "50", 9800.00);
insert into tb_funcionaries (nome, cargo, carga_Hora_Semanal, salario) 
values ("Garnet","Líder de Segurança", "60.5", 7000.00);
insert into tb_funcionaries (nome, cargo, carga_Hora_Semanal, salario) 
values ("Pearl","Coordenadora", "55", 6000.00);
insert into tb_funcionaries (nome, cargo, carga_Hora_Semanal, salario) 
values ("Ametist","Assistente", "30", 1987.00);
insert into tb_funcionaries (nome, cargo, carga_Hora_Semanal, salario) 
values ("Connie","Conselheira", 24.5, 5000.00);

/*Faça um select que retorne os funcionaries com o salário maior do que 2000.*/
select * from tb_funcionaries where salario >2000;

/*Faça um select que retorne os funcionaries com o salário menor do que 2000.*/
select * from tb_funcionaries where salario <2000;


