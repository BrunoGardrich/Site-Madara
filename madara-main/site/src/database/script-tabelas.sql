-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql - banco local - ambiente de desenvolvimento
*/

use Madara;
select * from usuario;

CREATE TABLE usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

select * from usuario;
select * from quiz;

Create table acesso (
idAcesso int primary key auto_increment,
dtAcesso Datetime default current_timestamp
);
drop table acesso;
drop table usuario;
drop table quiz;

create table quiz (
idquiz int primary key auto_increment,
pontuacao int,
fkusuario int,
foreign key (fkusuario)references usuario(idUsuario)
);
select * from quiz;