CREATE DATABASE PETS;
GO
USE PETS;
GO

create table clinica (
IDclinica tinyint primary key identity (1,1),
end_clinica varchar (10) NOT NULL
);

create table veterinario (
IDvet tinyint primary key identity (1,1),
IDclinica tinyint foreign key references clinica(IDclinica),
);

create table pets (
IDpets tinyint primary key identity (1,1),
IDvet tinyint foreign key references veterinario(IDvet),
pet_nome varchar(30),
pet_raca varchar (30),
pet_tipo varchar (30),
pet_data_nasc date,
pet_dono varchar (30),
);