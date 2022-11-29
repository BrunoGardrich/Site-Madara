-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql - banco local - ambiente de desenvolvimento
*/

create database Madara;
use Madara;
select * from usuario;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

select * from usuario;
select * from quiz;
select * from perfil;

drop table usuario;
drop table quiz;
drop table perfil;


create table quiz (
idquiz int primary key auto_increment,
pontuacao int,
fkusuario int,
foreign key (fkusuario)references usuario(id)
);

create table perfil (
idperfil int primary key auto_increment,
linkFoto varchar(200),
fkusu int,
foreign key (fkusu)references usuario(id)
);
insert into usuario values (Null,'bryam','bryam.garcia@sptech.school',123456);
insert into quiz values (Null,30,2);

select * from quiz;
select * from perfil;
select * from usuario;
select * from usuario join quiz on fkusuario = id order by id desc limit 10;

select * from usuario join quiz on idUsuario = fkusuario join perfil on idUsuario =fkusu
order by idusuario desc limit 10;

select * from usuario left join quiz on fkusuario = idusuario  left join perfil on fkusu=idUsuario
UNION
select * from usuario left join perfil on fkusu = idUsuario where idUsuario = 11;

SELECT * FROM perfil WHERE idperfil = 25 AND fkusu = 15;
select * from usuario left join perfil on fkusu = idUsuario ;

select * from usuario 
        join quiz on 
        fkusuario = idUsuario
        UNION 
        select * from usuario 
        left join perfil on 
        fkusu = idUsuario order by idUsuario desc;
        
        select * from perfil where fkusu = 1;
        