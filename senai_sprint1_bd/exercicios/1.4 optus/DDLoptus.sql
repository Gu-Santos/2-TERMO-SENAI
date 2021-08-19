CREATE DATABASE OPTUS
GO
USE OPTUS
GO

--ALTER TABLE optus
--ADD CNPJ SMALLINT primary key identity
--GO

CREATE TABLE optus (
CNPJ SMALLINT primary key identity,
endereco smallint,
);
GO

CREATE TABLE artistas (
IDartista smallint primary key identity,
Art_name varchar(120),
);
GO

CREATE TABLE usuario (
IDusuario smallint primary key identity,
Usu_name varchar (120),
Usu_email varchar (256),
Usu_senha varchar (20),
Usu_tipo bit,
);
GO

CREATE TABLE album (
IDalbum smallint primary key identity,
IDartista smallint foreign key references artistas(IDartista),
al_name varchar (120),
al_data date ,
al_local varchar (100),
al_min smallint,
al_view bit,
art_name varchar (120),
al_estilo varchar (100),
);
GO

CREATE TABLE acesso (
IDusuario smallint foreign key references usuario(IDusuario),
IDalbum smallint foreign key references album(IDalbum),
);