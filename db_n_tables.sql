create database comercio;

use comercio;

create table cliente(
    id_cliente int primary key auto_increment,
    nome varchar(50) not null,
    sexo enum('Masculino', 'Feminino') not null,
    email varchar(50) unique,
    cpf varchar(15) unique    
);

create table endereco(
    id_endereco int primary key auto_increment,
    rua varchar(50) not null,
    bairro varchar(50) not null,
    cidade varchar(50) not null,
    estado char(2) not null,
    id_cliente int unique,
    foreign key(id_cliente) references cliente(id_cliente)
);

create table telefone(
    id_telefone int primary key auto_increment,
    tipo enum('Residencial', 'Comercial', 'Celular') not null,
    telefone varchar(15) not null,
    id_cliente int,
    foreign key(id_cliente) references cliente(id_cliente)
);


alter table cliente
change column sexo sexo enum('M', 'F') not null,
change column cpf cpf varchar(15) unique not null;

alter table telefone
modify column tipo enum('RES', 'COM', 'CEL') not null;

alter table cliente
add column altura float(3, 2);

alter table cliente
drop column altura;

alter table cliente
add column altura float(3,2)
after sexo;