########################################################################
#### Base de datos PSP, ALFREDO GONAZLEZ GAVIÑA, mayo 10, 2016	    ####
##################### Analisis JOSE BALTAZAR RAMIREZ ###################
########################################################################

drop database PSP;
create database PSP;
use PSP;

	
	### tablas sin relaciones ###
create table Estudiantes (
	IdEstudiante 	int 			not null primary key auto_increment,
    Nombre 		 	varchar (25) not null,
    ApellidoPaterno varchar (25) not null,
    ApellidoMaterno varchar (25) not null,
    Telefono 		int,
    FechaNacimiento date
);

create table Fase ( IdFase int not null primary key auto_increment );

create table PSP_Defect_Recording_Log (
	IdPSP_Defect_Recording_Log int 	not null primary key auto_increment ,
    Fecha 					   date not null
);

create table PSP_Time_Recording_Log (
	IdPSP_Time_Recording_Log int 	not null  primary key auto_increment,
    StartAndDateTime		 datetime	not null,
    Interruptiontime		 datetime,
    StopAndDateTime			 datetime 	not null,
    DeltaTime				 double,
    Comments 				 varchar(45)
);

create table Defect (
	IdPSP_Time_Recording_Log int 			not null primary key auto_increment,
    Nombre					 varchar(45)    not null,
    Description 			 tinytext
);

create table Programa (
	IdPrograma	int 		not null primary key auto_increment,
    Nombre		varchar(45)
);

create table Instructor (
	IdInstructor 		int 		not null primary key auto_increment,
    Nombre		 		varchar(25)	not null,
    ApellidoPaterno		varchar(20) not null,
    ApellidoMaterno		varchar(20) not null,
    Telefono			int ,
    FechaNacimiento     date
);

create table Lenguaje_Programacion(
	IdLenguaje_Programacion int 			not null primary key auto_increment,
    Nombre					varchar	(45)	not null
);

	### tablas con relaciones ###
	IdPSP_Defect_Recording_Log int not null primary key auto_increment,
    Fecha date not null
);
create table PSP(
	IdPSP int not null primary key auto_increment,
    
    ### crear campos para representar las llaves foraneas ###
		Estudiante_IdEstudiante 		int not null,
        Instructor_IdInstructor 		int not null,
        Fase_IdFase 					int not null,
        PSP_Defect_Recordign_Log_IdPSP	int not null,
        PSP_Time_Recording_Log_IdPSP	int not null,
        
	foreign key (Estudiante_IdEstudiante)		  references PSP.Estudiantes(IdEstudiante),
    foreign key (Instructor_IdInstructor)   	  references PSP.Instructor(IdInstructor),
    foreign key (Fase_IdFase)					  references PSP.Fase(IdFase),

	foreign key (PSP_Defect_Recordign_Log_IdPSP	) references PSP.PSP_Defect_Recording_Log(IdPSP_Defect_Recording_Log),
    foreign key (PSP_Time_Recording_Log_IdPSP)	  references PSP.PSP_Time_Recording_Log (IdPSP_Time_Recording_Log )
);

create table Lenguaje_Programacion_Has_Programa (
	Lenguaje_Programacion_IdLenguaje int not null,
    Programa_IdPrograma 		 int not null,
    
    foreign key (Lenguaje_Programacion_IdLenguaje) references PSP.Lenguaje_Programacion(IdLenguaje_Programacion),
    foreign key (Programa_IdPrograma)			   references PSP.Programa(IdPrograma) 
);

create table PSP_Has_Program (
	PSP_IdPSP 			int not null ,
    Programa_IdPrograma int not null,
    
    primary key (PSP_IdPSP,Programa_IdPrograma),
    
    index FK_PSP 		(PSP_IdPSP),
    index FK_Programa	(Programa_IdPrograma),
     
     
	### creacion de llaves foraneas ###
    constraint FK_PSP
        foreign key (PSP_IdPSP) 			references PSP.PSP(IdPSP),
        
    ### creacion de llaves foraneas ###
    constraint FK_Programa
		foreign key (Programa_IdPrograma)	references PSP.Programa(IdPrograma)
);
