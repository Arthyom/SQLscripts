#################################################################
#### 		ALFREDO GONZALEZ GAVIÑA MAYO 11, 2016 			#####
########## 				Hoja de datos				  ###########
#################################################################


use PSP;

	### estudiantes ###
    insert into 
		PSP.Estudiantes ( Nombre, ApellidoPaterno, ApellidoMaterno, Telefono, FechaNacimiento)
		value			( "alfredo", "Gonzalez","gavinia", 2573434, '20-01-1994')
	;
	
    insert into 
		PSP.Estudiantes ( Nombre, ApellidoPaterno, ApellidoMaterno, Telefono, FechaNacimiento)
		value			( "miguel", "-","-", 00000, 01-01-1994)
	;
        
    insert into 
		PSP.Estudiantes ( Nombre, ApellidoPaterno, ApellidoMaterno, Telefono, FechaNacimiento)
		value			( "calos", "lopez","olivas", 111111, '01-01-1994')
	;
        
    insert into 
		PSP.Estudiantes ( Nombre, ApellidoPaterno, ApellidoMaterno, Telefono, FechaNacimiento)
		value			( "jose","zavala","ozeguera", 2222222, '01-01-1994')
	;
        


	### instructor ###
    insert into 
		PSP.Instructor ( Nombre, ApellidoPaterno, ApellidoMaterno, Telefono, FechaNacimiento)
		value			( "Germarn", "torres","algo", 11111, '1800-01-01')
	;
    insert into 
		PSP.Instructor  ( Nombre, ApellidoPaterno, ApellidoMaterno, Telefono, FechaNacimiento)
		value			( "edi", "-","-", 22222, 1994-03-04)
	;
    insert into 
		PSP.Instructor ( Nombre, ApellidoPaterno, ApellidoMaterno, Telefono, FechaNacimiento)
		value			( "calos", "lopez","olivas", 111111, '1980-05-24')
	;
    insert into 
		PSP.Instructor ( Nombre, ApellidoPaterno, ApellidoMaterno, Telefono, FechaNacimiento)
		value			( "juan carlos","ruiz","gonzalez", 477376, '1990-04-04')
	;
    
    ### lenguajes ###
    
    insert into PSP.Lenguaje_Programacion ( Nombre)		values ("C");
	insert into PSP.Lenguaje_Programacion ( Nombre)		values ("C++");	
	insert into PSP.Lenguaje_Programacion ( Nombre)		values ("C#");
    insert into PSP.Lenguaje_Programacion ( Nombre)		values ("java");
    insert into PSP.Lenguaje_Programacion ( Nombre)		values ("javascript");
    insert into PSP.Lenguaje_Programacion ( Nombre)		values ("ruby");
    insert into PSP.Lenguaje_Programacion ( Nombre)		values ("haskell");
    insert into PSP.Lenguaje_Programacion ( Nombre)		values ("python");
    insert into PSP.Lenguaje_Programacion ( Nombre)		values ("php");
    insert into PSP.Lenguaje_Programacion ( Nombre)		values ("bash");
    
    ### programa ###
    insert into PSP.Programa (Nombre) values ("electronica");
    insert into PSP.Programa (Nombre) values ("sistemas");
    insert into PSP.Programa (Nombre) values ("gestion");
    insert into PSP.Programa (Nombre) values ("mecanica");
    insert into PSP.Programa (Nombre) values ("mecatronica");
    insert into PSP.Programa (Nombre) values ("derecho");
    insert into PSP.Programa (Nombre) values ("ingles");
    
	insert into PSP.Programa (Nombre) values ("sistema de contabilidad");
    insert into PSP.Programa (Nombre) values ("sistema de citas medicas");
    insert into PSP.Programa (Nombre) values ("gestion de redes");
    insert into PSP.Programa (Nombre) values ("tienda de electronica en linea");
    insert into PSP.Programa (Nombre) values ("ajedrez con IA");
    insert into PSP.Programa (Nombre) values ("Planificador de procesos");
    insert into PSP.Programa (Nombre) values ("sistema bancario");
    
    ### defects ###
    insert into PSP.Defect (Nombre,Description) values ("archivo no encontrado","no se enconto el archivo");
    insert into PSP.Defect (Nombre,Description) values ("archivo inexistente","no existe el archivo");
    insert into PSP.Defect (Nombre,Description) values ("indie fuera de rango","el indice esta fuera del rango del arreglo");
    insert into PSP.Defect (Nombre,Description) values ("cadena vacia","cadena sin caracteres");
    insert into PSP.Defect (Nombre,Description) values ("variable no iniciada","no se ha incializado la variable");
    insert into PSP.Defect (Nombre,Description) values ("almacen agotado","memoria insuficiente");
    insert into PSP.Defect (Nombre,Description) values ("metodo no declarado","no se enconto el metodo indicado ");
    
    ### PSP_Defect_Recrding_Log ###
    insert into PSP.PSP_Defect_Recording_Log (Fecha) values ('1990-12-04');
    insert into PSP.PSP_Defect_Recording_Log (Fecha) values ('2000-03-21');
    insert into PSP.PSP_Defect_Recording_Log (Fecha) values ('2011-05-04');
    insert into PSP.PSP_Defect_Recording_Log (Fecha) values ('2001-09-14');
    insert into PSP.PSP_Defect_Recording_Log (Fecha) values ('1999-10-09');
    insert into PSP.PSP_Defect_Recording_Log (Fecha) values ('1995-06-28');
    
    ### PSP time recordin log ###
    insert into PSP.PSP_Time_Recording_Log (StartAndDateTime,StopAndDateTime) values ('1990-12-04 17:15:10','1990-12-04 20:10:19'); 
    insert into PSP.PSP_Time_Recording_Log (StartAndDateTime,StopAndDateTime) values ('2000-03-21 00:00:01','2000-04-21 12:10:19'); 
    insert into PSP.PSP_Time_Recording_Log (StartAndDateTime,StopAndDateTime) values ('2011-05-04 13:15:10','2011-05-04 18:39:19'); 
    insert into PSP.PSP_Time_Recording_Log (StartAndDateTime,StopAndDateTime) values ('2001-09-14 19:23:10','2013-11-25 12:10:19'); 
    insert into PSP.PSP_Time_Recording_Log (StartAndDateTime,StopAndDateTime) values ('1999-10-09 11:00:10','1999-11-25 12:10:19'); 
    insert into PSP.PSP_Time_Recording_Log (StartAndDateTime,StopAndDateTime) values ('2001-09-14 23:22:10','2001-09-14 23:50:19'); 
    
   