Proceso Mostrar_fecha_dia_siguiente
	
	Escribir "Ingrese una fecha abajo: dia mes a�o"
	Escribir "D�a:"
	Definir dia Como Entero
	Leer dia
	
	Escribir "Mes: "
	Definir mes Como Entero
	Leer mes
	
	Escribir "A�o: "
	Definir a�o Como Entero
	Leer a�o
	
	Si dia > 0 y dia < 31 Entonces
		dia = dia
	SiNo Escribir "Ingrese un dato v�lido para el d�a"
		dia = 0
		Escribir "D�a: "
		Leer dia
	FinSi
	
	Si dia>30 y mes=4 Entonces
		Escribir "Ingrese un dato v�lido para el d�a"
		dia = 0
		Escribir "D�a: "
		Leer dia
	SiNo 
		dia = dia
	FinSi
	
	Si dia>30 y mes=6 
		Escribir "Ingrese un dato v�lido para el d�a"
		dia = 0
		Escribir "D�a: "
		Leer dia
	SiNo 
		dia = dia
	FinSi
	
	Si dia>30 y mes=9
		Escribir "Ingrese un dato v�lido para el d�a"
		dia = 0
		Escribir "D�a: "
		Leer dia
	SiNo 
		dia = dia
	FinSi
	
	Si dia>30 y mes=11
		Escribir "Ingrese un dato v�lido para el d�a"
		dia = 0
		Escribir "D�a: "
		Leer dia
	SiNo 
		dia = dia
	FinSi
		

	Si mes=2 y a�o MOD 4>0 y dia>28 Entonces
		Escribir "Ingrese un dato v�lido para el d�a. Este a�o febrero solo tiene 28 d�as"
		dia = 0
		Escribir "D�a: "
		Leer dia
	SiNo 
		dia = dia
	FinSi
	
	Si mes > 0 y mes <= 12 Entonces
		mes = mes
	SiNo Escribir "Ingrese un dato v�lido para el mes: 1 a 12 "
		mes = 0
		Escribir "Mes: "
		Leer mes
	FinSi
	
	Si a�o > 0 y a�o <= 9999 Entonces
		a�o = a�o
	SiNo Escribir "Ingrese un dato v�lido para el a�o: 1 a 9999 "
		mes = 0
		Escribir "A�o: "
		Leer a�o
	FinSi
	//Si dia =29 y mes = 2 y residuo a�o/4 = 0 y residuo a�o/400 = 0 y residuo a�o/100 > 0 entonces FDS = ndia =1, nmes = 3 y na�o = a�o
	
	Definir ndia Como Entero
	Definir nmes Como Entero
	Definir na�o Como Entero
	Definir ta�o Como Caracter
	
	Si a�o MOD 4=0 y a�o MOD 400=0 Entonces
		ta�o="Bisiesto"
	SiNo
		ta�o= "No bisiesto"
	FinSi
	
	Si mes=2 y ta�o="Bisiesto" Entonces
		Si dia=29 Entonces
			ndia <- 1
			nmes <- 3
			na�o <- a�o
			Escribir "La fecha del d�a siguiente es: " ndia, "-", nmes, "-" na�o 
		SiNo Escribir "Fin"
		FinSi
	SiNo
	FinSi
	Si mes=2 y ta�o="Bisiesto" Entonces
		Si dia=28 Entonces
			ndia <- 29
			nmes <- 2
			na�o <- a�o
			Escribir "La fecha del d�a siguiente es: " ndia, "-", nmes, "-" na�o 
		SiNo Escribir "Fin"
		FinSi
	SiNo
	FinSi
	Si mes=2 y ta�o="No bisiesto" Entonces
		Si dia=28 Entonces
			ndia <- 1
			nmes <- 3
			na�o <- a�o
			Escribir "La fecha del d�a siguiente es: " ndia, "-", nmes, "-" na�o 
		SiNo Escribir "Fin"
		FinSi
	SiNo
	FinSi
	//si el dia es 31 y el mes es enero, marzo, mayo, julio, agosto u octubre.el siguiente d�a es 1 del mes siguiente del mismo a�o
	
	Definir mesde31 Como Logico
	Si mes=1 Entonces
		mesde31=Verdadero
	SiNo
		mesde31=Falso
	FinSi
	
	Si mesde31=Verdadero Entonces
		ndia <- 1
		nmes <- mes+1
		na�o <- a�o
		Escribir "La fecha del d�a siguiente es: " ndia, "-", nmes, "-" na�o 
	SiNo Escribir "Fin"
	FinSi
		
	ndia <- dia+1
	nmes <- mes
	na�o <- a�o
	Escribir "La fecha del d�a siguiente es: " ndia, "-", nmes, "-" na�o
	Escribir "Fin"

FinProceso
