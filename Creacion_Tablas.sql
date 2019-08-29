
drop table notas;
drop table visitas;
drop table mascota;
drop table veterinario;
drop table especie;
drop table especialidad;
drop table dueno;

--ORDEN DE CREACION: dueno, especialidad, especie, veterinario, mascota, visitas, notas
create table dueno(
    tipo_doc_dueno varchar(2),
    num_doc_dueno number(10,0),
    nombre varchar(20),
    apellidos varchar(20),
    telefono number(10,0),
    ciudad varchar(20),
    direccion varchar(100),
    correo varchar(50),
    primary key(tipo_doc_dueno, num_doc_dueno),
    check (tipo_doc_dueno in ('CC','CE')),
    check (regexp_like(correo,'^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$'))  
);

--Especialidad
create table especialidad(
    id_especialidad number(1,0),
    descripcion varchar(30),
    factor_costo number(3,2),
    primary key(id_especialidad),
    check(factor_costo >=1.00 and factor_costo <=2.00)
);

create table especie(
    id_especie number(1,0),
    descripcion varchar2(500) not null,
    primary key(id_especie)
);

--Veterinario
create table veterinario(
    numero_doc_vet number(10,0),
    tipo_doc_vet varchar(3),
    numero_tarjeta_profesional number(10,0) unique,
    nombres varchar(15),
    apellidos varchar(15),
    id_especialidad number(1,0),
    primary key(numero_doc_vet,tipo_doc_vet)
);

create table mascota(
    id_mascota number(3,0) not null, --000 a 999
    nombre varchar2(10) not null,
    fecha_nacimiento date,
    id_especie number(1,0), --FK a Especie
    tipo_doc_dueno varchar(2), --NIT, CC, CE
    num_doc_dueno number(10,0),
    primary key(id_mascota),
    foreign key(id_especie) references especie,
    foreign key(tipo_doc_dueno,num_doc_dueno) references dueno,
    check(tipo_doc_dueno in('CC','CE'))
);

create table visitas(
id_visita number(4,0),
tipo varchar2(16) not null,
fecha_ingreso date not null,
fecha_egreso date,
motivo_visita varchar2(500) not null,
id_mascota number(3,0) not null,
numero_doc_vet number(10,0) not null,
tipo_doc_vet varchar(3),
costo number(19,4),
foreign key (id_mascota) references mascota,
foreign key (numero_doc_vet,tipo_doc_vet) references veterinario,
primary key (id_visita),
check (tipo in ('HOSPITALIZACION','CONSULTA'))
);

create table notas(
	id_visita number(4,0),
	fecha_nota date,
	nota varchar2(500) not null,
	foreign key(id_visita) references visitas,
	primary key(id_visita,fecha_nota)	
);

