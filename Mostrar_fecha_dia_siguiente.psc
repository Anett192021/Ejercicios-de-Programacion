Proceso Mostrar_fecha_dia_siguiente
	
	Escribir "Ingrese una fecha abajo: dia mes año"
	Escribir "Dìa:"
	Definir dia Como Entero
	Leer dia
	
	Escribir "Mes: "
	Definir mes Como Entero
	Leer mes
	
	Escribir "Año: "
	Definir año Como Entero
	Leer año
	
	Si dia > 0 y dia < 31 Entonces
		dia = dia
	SiNo Escribir "Ingrese un dato vàlido para el día"
		dia = 0
		Escribir "Dìa: "
		Leer dia
	FinSi
	
	Si dia>30 y mes=4 Entonces
		Escribir "Ingrese un dato vàlido para el día"
		dia = 0
		Escribir "Dìa: "
		Leer dia
	SiNo 
		dia = dia
	FinSi
	
	Si dia>30 y mes=6 
		Escribir "Ingrese un dato vàlido para el día"
		dia = 0
		Escribir "Dìa: "
		Leer dia
	SiNo 
		dia = dia
	FinSi
	
	Si dia>30 y mes=9
		Escribir "Ingrese un dato vàlido para el día"
		dia = 0
		Escribir "Dìa: "
		Leer dia
	SiNo 
		dia = dia
	FinSi
	
	Si dia>30 y mes=11
		Escribir "Ingrese un dato vàlido para el día"
		dia = 0
		Escribir "Dìa: "
		Leer dia
	SiNo 
		dia = dia
	FinSi
		

	Si mes=2 y año MOD 4>0 y dia>28 Entonces
		Escribir "Ingrese un dato vàlido para el día. Este año febrero solo tiene 28 dìas"
		dia = 0
		Escribir "Dìa: "
		Leer dia
	SiNo 
		dia = dia
	FinSi
	
	Si mes > 0 y mes <= 12 Entonces
		mes = mes
	SiNo Escribir "Ingrese un dato vàlido para el mes: 1 a 12 "
		mes = 0
		Escribir "Mes: "
		Leer mes
	FinSi
	
	Si año > 0 y año <= 9999 Entonces
		año = año
	SiNo Escribir "Ingrese un dato vàlido para el año: 1 a 9999 "
		mes = 0
		Escribir "Año: "
		Leer año
	FinSi
	//Si dia =29 y mes = 2 y residuo año/4 = 0 y residuo año/400 = 0 y residuo año/100 > 0 entonces FDS = ndia =1, nmes = 3 y naño = año
	
	Definir ndia Como Entero
	Definir nmes Como Entero
	Definir naño Como Entero
	Definir taño Como Caracter
	
	Si año MOD 4=0 y año MOD 400=0 Entonces
		taño="Bisiesto"
	SiNo
		taño= "No bisiesto"
	FinSi
	
	Si mes=2 y taño="Bisiesto" Entonces
		Si dia=29 Entonces
			ndia <- 1
			nmes <- 3
			naño <- año
			Escribir "La fecha del dìa siguiente es: " ndia, "-", nmes, "-" naño 
		SiNo Escribir "Fin"
		FinSi
	SiNo
	FinSi
	Si mes=2 y taño="Bisiesto" Entonces
		Si dia=28 Entonces
			ndia <- 29
			nmes <- 2
			naño <- año
			Escribir "La fecha del dìa siguiente es: " ndia, "-", nmes, "-" naño 
		SiNo Escribir "Fin"
		FinSi
	SiNo
	FinSi
	Si mes=2 y taño="No bisiesto" Entonces
		Si dia=28 Entonces
			ndia <- 1
			nmes <- 3
			naño <- año
			Escribir "La fecha del dìa siguiente es: " ndia, "-", nmes, "-" naño 
		SiNo Escribir "Fin"
		FinSi
	SiNo
	FinSi
	//si el dia es 31 y el mes es enero, marzo, mayo, julio, agosto u octubre.el siguiente dìa es 1 del mes siguiente del mismo año
	
	Definir mesde31 Como Logico
	Si mes=1 Entonces
		mesde31=Verdadero
	SiNo
		mesde31=Falso
	FinSi
	
	Si mesde31=Verdadero Entonces
		ndia <- 1
		nmes <- mes+1
		naño <- año
		Escribir "La fecha del dìa siguiente es: " ndia, "-", nmes, "-" naño 
	SiNo Escribir "Fin"
	FinSi
		
	ndia <- dia+1
	nmes <- mes
	naño <- año
	Escribir "La fecha del dìa siguiente es: " ndia, "-", nmes, "-" naño
	Escribir "Fin"

FinProceso
