
--carlos torres. practica sql server

create database recursosHumanos;

go

use recursosHumanos;
 
go

create table empleado (cedula int primary key, nombre varchar(30), edad int, telefono varchar(10), añoingreso int, tipoempleado varchar(10));
create table administrador(cedula int primary key, profesion varchar(30), creditos int);
create table ingeniero(cedula int primary key, area varchar(20));
create table operario(cedula int primary key, estado varchar(30));
create table comentario(idcomentario int primary key,cedulaempleado int, tipocomentario varchar(10), comentario varchar(300) );

alter table administrador add foreign key (cedula) references empleado(cedula);
alter table ingeniero add foreign key (cedula) references empleado(cedula);
alter table operario add foreign key (cedula) references empleado(cedula);
alter table comentario add foreign key (cedulaempleado) references empleado(cedula);