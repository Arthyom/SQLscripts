use PSP;


# drop table PSP,PSP_Has_Program,Lenguaje_Programacion_Has_Programa  ;
#drop table PSP.PSP_Defect_Recording_Log;

create table PSP_Defect_Recording_Log(
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
        
	foreign key (Estudiante_IdEstudiante)		  references PSP.Estudiante(IdEstudiante),
    foreign key (Instructor_IdInstructor)   	  references PSP.Instructor(IdInstructor),
    foreign key (Fase_IdFase)					  references PSP.Fase(IdFase),

	foreign key (PSP_Defect_Recording_Log_IdPSP)  references PSP.PSP_Defect_Recording_Log(IdPSP_Defect_Recording_Log),
    foreign key (PSP_Time_Recording_Log_IdPSP)	  references PSP.PSP_Time_Recordign_Log(IdPSP_Time_Recording_Log)
);
#alter table PSP add index fk_log (PSP_Defect_Recordign_Log_IdPSP);
#alter table PSP add constraint fk_log
#foreign key(PSP_Defect_Recordign_Log_IdPSP)references PSP.PSP_Defect_Recording_Log(IdPSP_Defect_Recording_Log);

create table Lenguaje_Programacion_Has_Programa (
	Lenguaje_Programacion_IdLenguaje int not null,
    Programa_IdPrograma 		 int not null,
    
    foreign key (Lenguaje_Programacion_IdLenguaje) references PSP.Lenguaje_Programacion(IdLenguaje_Programacion),
    foreign key (Programa_IdPrograma)			   references PSP.Program(IdProgram) 
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
		foreign key (Programa_IdPrograma)	references PSP.Program(IdProgram)
);

show tables;
show columns from PSP.PSP;