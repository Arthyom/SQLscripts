############## base de datos PSP ##############

	#alfredo gonzalez gavina    02/mayo/16#

###############################################

create database examen;
	use  examen;

	create table STUDENT(
		nua int(8) primary key not null auto_increment,
		nombre varchar(20) not null
	);

	create table PROGRAM(
		id_program tinyint primary key not null auto_increment,
		nobre varchar(20) not null
	);

	create table PROGRAMING_LENGUAJE (
		nombre varchar(20)

	);

	create table INSTRUCTOR (
		id_instructor int(8) primary key not null auto_increment,
		nombre varchar(20) not null
	);

	create table PHASE(
		id_phae tinyint(5) primary key not null auto_increment,
		nombre_fase varchar(20)
	);

	create table DEFECT (
		id_defect tinyint(10) primary key not null auto_increment,
		nombre_defecto varchar(10) not null,
		descripcion varchar(50) 
	);

	create table EROORS   (
		id_erorrs tinyint(10) primary key not null auto_increment,
		nombre_error varchar(10) not null,
		descripcion varchar(50)
	);
