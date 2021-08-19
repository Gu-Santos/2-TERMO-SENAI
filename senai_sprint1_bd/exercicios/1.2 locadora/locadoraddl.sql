CREATE DATABASE LOCADORA;
GO

USE LOCADORA;
GO

create table locadora (
IDlocadora tinyint primary key identity (1,1),
);
GO

create table veiculos (
IDveiculos tinyint primary key identity (1,1),
IDlocadora tinyint foreign key references locadora(IDlocadora),
Num_placa char(7),
);

create table modelo (
IDmodelo tinyint primary key identity (1,1),
IDveiculos tinyint foreign key references veiculos(IDveiculos),
);


create table marca (
IDmarca tinyint primary key identity (1,1),
IDmodelo tinyint foreign key references modelo(IDmodelo),
);