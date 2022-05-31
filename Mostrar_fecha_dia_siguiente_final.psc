Proceso Mostrar_fecha_dia_siguiente
	
	Definir dia Como Entero
	Definir mes Como Entero
	Definir annio Como Entero

	Escribir "Ingrese una fecha abajo: dia mes annio"

	Escribir "Dìa:"
	Leer dia
	//Revisa si el día ingresado no excede de 31 días
	Si dia > 0 y dia <= 31 Entonces
		dia = dia
	SiNo Escribir "Ingrese un dato válido para el día"
		dia = 0
		Escribir "Dìa: "
		Leer dia
	FinSi
		
	Escribir "Mes: "
	Leer mes
	
	//Revisa si el mes ingresado está en el rango de 1 a 12 
	Si mes > 0 y mes <= 12 Entonces
		mes = mes
	SiNo Escribir "Ingrese un dato válido para el mes: 1 a 12 "
		mes = 0
		Escribir "Mes: "
		Leer mes
	FinSi
	
	//Define cuáles meses son de 28-29, 30 o 31 días
	//Revisa si el día ingresado es válido según el mes ingresado 
	Definir mesde31 Como Logico
	mesde31=Falso
	Si mes=1 O mes=3 O mes=5 O mes=7 O mes=8 O mes=10 Entonces
		mesde31=Verdadero
		Escribir "El mes " mes " trae 31 dias"
	FinSi
	
	Definir mesde30 Como Logico
	Si mes=4 O mes=6 O mes=9 O mes=11 Entonces
		mesde30=Verdadero
		Escribir "El mes " mes " trae 30 dias" 
		Si dia>30 Escribir "Ingrese un dato válido para el día"
		Leer dia
		FinSi
	FinSi
	
	Definir mesdefebrero Como Logico
	Si mes=2 Entonces
		mesdefebrero=Verdadero
		Escribir "El mes " mes " trae 28 o 29 dias"
		Si dia>29 Escribir "Ingrese un dato válido para el día"
		Leer dia
		FinSi
	FinSi	
	
	Escribir "Año: "
	Leer annio
	
	//Revisa si el annio ingresado está en el rango de 0 a 9999
	Si annio > 0 y annio <= 9999 Entonces
		annio = annio
	SiNo Escribir "Ingrese un dato válido para el año: 1 a 9999 "
		mes = 0
		Escribir "Año: "
		Leer annio
	FinSi
	
	// para todos los casos no detallados posteriormente, el día siguiente es uno màs que el día actual en el mismo mes del mismo año 
	
	Definir ndia Como Entero
	Definir nmes Como Entero
	Definir nannio Como Entero
	
	Si dia<32
		ndia <- dia+1
		nmes <- mes
		nannio <- annio
		//Revisa si el año es o no bisiesto
		Definir tannio Como Caracter
		Si annio MOD 4=0 Entonces
			tannio="Bisiesto"
			Escribir "Divisible entre 4, el residuo es: " annio MOD 4
			Si annio MOD 100=0
				//"Es divisible entre 100, el residuo es: " annio MOD 100
				Si annio MOD 400=0
					tannio="Bisiesto"
					// "Divisible entre 400, el residuo es: " annio MOD 400
					Escribir "El año es " tannio
				Sino 
					tannio="No Bisiesto" 	
					// "No Divisible entre 400, el residuo es: " annio MOD 100	
					Escribir "El año es " tannio
				FinSi
			Sino 
				tannio="Bisiesto" 
				// "No Divisible entre 100, el residuo es: " annio MOD 100	
				Escribir "El año es " tannio
			FinSi	
		SiNo 
			tannio="No bisiesto"
			// "No es divisible entre 4, el residuo es: " annio MOD 4
			Escribir "El año es " tannio
		FinSi
	//inicia con la revisión de los casos especiales		
		// Escribe el día siguiente a la fecha dada según el mes y el tipo de año (bisiesto / no bisiesto)
		//si el dia es 31 y el mes es enero, marzo, mayo, julio, agosto u octubre.el siguiente dìa es 1 del mes siguiente del mismo año
		Si dia=31 y mesde31=Verdadero Entonces
			ndia <- 1
			nmes <- mes+1
			nannio <- annio
			Escribir "La fecha del dìa siguiente es: " ndia, "-", nmes, "-" nannio 
		FinSi	
		//si el dia es 30 y el mes es abril, junio, septiembre o noviembre.el siguiente dìa es 1 del mes siguiente del mismo año	
		Si dia=30 y mesde30=Verdadero Entonces
			ndia <- 1
			nmes <- mes+1
			nannio <- annio
		FinSi	
		// para el caso del mes de febrero en general
		//si el dia es menor a 28 el siguiente dìa es el día siguiente será uno más que el día actual de febrero del mismo año	
		Si mes=2 y dia<28 Entonces
			ndia <- dia+1
			nmes <- 2
			nannio <- annio
			Escribir "La fecha del dìa siguiente es: " ndia, "-", nmes, "-" nannio 
		FinSi
		// para el caso de febrero de un año bisiesto
		Si mes=2 y tannio="Bisiesto" Entonces
			//si el dia es 29 el siguiente dìa es 1 de marzo del mismo año
			Si dia=29 Entonces
				ndia <- 1
				nmes <- 3
				nannio <- annio
				Escribir "La fecha del dìa siguiente es: " ndia, "-", nmes, "-" nannio 
			FinSi	
			//si el dia es 28 el siguiente dìa es el 29 de febrero del mismo año
			Si dia=28 Entonces
				ndia <- 29
				nmes <- 2
				nannio <- annio
			FinSi
		FinSi
			
		// para el caso de febrero de un año no bisiesto
		Si mes=2 y tannio="No bisiesto" Entonces
			//si el dia es 28 el siguiente dìa es 1 del mes de marzo del mismo año
			Si dia=28 Entonces
				ndia <- 1
				nmes <- 3
				nannio <- annio
			FinSi	
			Si dia=29 Entonces
				Escribir "El mes " mes " trae 28 días porque el año no es bisiesto"
				Escribir "Ingrese un dato válido para el día"
				Leer dia
				Si dia=28
				ndia <- 1
				nmes <- 3
				nannio <- annio
				FinSi
			FinSi
			
		FinSi		
		//para el caso del 31 de diciembre, el siguiente dìa es 1 de enero del siguiente año
		Si mes=12 y dia=31 
			ndia <- 1
			nmes <- 1
			nannio <- annio+1
		FinSi
		
		Escribir "La fecha del dìa siguiente es: " ndia, "-", nmes, "-" nannio 
	FinSi	
	
FinProceso
