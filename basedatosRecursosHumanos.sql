
--carlos torres. practica sql server

create database recursosHumanos;

go

use recursosHumanos;
 
go

create table empleado (cedula int primary key, nombre varchar(30), edad int, telefono varchar(10), añoingreso int, tipoempleado varchar(20));
create table administrador(cedula int primary key, profesion varchar(30), creditos int);
create table ingeniero(cedula int primary key, area varchar(20));
create table operario(cedula int primary key, estado varchar(30));
create table comentario(idcomentario int primary key,cedulaempleado int, tipocomentario varchar(10), comentario varchar(300) );

alter table administrador add foreign key (cedula) references empleado(cedula);
alter table ingeniero add foreign key (cedula) references empleado(cedula);
alter table operario add foreign key (cedula) references empleado(cedula);
alter table comentario add foreign key (cedulaempleado) references empleado(cedula);


--insersion de datos.

insert into empleado (cedula,nombre,edad,telefono,añoingreso,tipoempleado) values(123123,'juan torres', 23,'3212321232', 2013,'ingeniero');
insert into empleado (cedula,nombre,edad,telefono,añoingreso,tipoempleado) values(123124,'andrea medina', 28,'3212321222', 2010,'ingeniero');
insert into empleado (cedula,nombre,edad,telefono,añoingreso,tipoempleado) values(123125,'edgar ramirez', 22,'3212327232', 2015,'administrador');
insert into empleado (cedula,nombre,edad,telefono,añoingreso,tipoempleado) values(123126,'adriana valencia', 24,'3112321232', 2013,'administrador');
insert into empleado (cedula,nombre,edad,telefono,añoingreso,tipoempleado) values(123127,'roxana torres', 27,'3219321232', 2012,'operario');
insert into empleado (cedula,nombre,edad,telefono,añoingreso,tipoempleado) values(123128,'camilo torres', 24,'3215321232', 2013,'operario');

insert into ingeniero (cedula,area) values(123123,'sistemas');
insert into ingeniero (cedula,area) values(123124,'industrial');

insert into administrador (cedula,profesion,creditos) values(123125,'contador',645);
insert into administrador (cedula,profesion,creditos) values(123126,'aduanas',553);

insert into operario (cedula,estado) values(123127,'activo');
insert into operario (cedula,estado) values(123128,'activo');