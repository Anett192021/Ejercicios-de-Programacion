#include<iostream>
#include<stdio.h>
using namespace std;

int main() {
	int annio;
	int dia;
	int mes;
	bool mesde30;
	bool mesde31;
	bool mesdefebrero;
	int nannio;
	int ndia;
	int nmes;
	string tannio;
	cout << "Ingrese una fecha abajo: dia mes año" << endl;
	cout << "Día:" << endl;
	cin >> dia;
	// Revisa si el día ingresado no excede de 31 días
	if (dia>0 && dia<=31) {
		dia = dia;
	} else {
		cout << "Ingrese un dato válido para el día" << endl;
		dia = 0;
		cout << "Día: " << endl;
		cin >> dia;
	}
	cout << "Mes: " << endl;
	cin >> mes;
	// Revisa si el mes ingresado está en el rango de 1 a 12 
	if (mes>0 && mes<=12) {
		mes = mes;
	} else {
		cout << "Ingrese un dato válido para el mes: 1 a 12 " << endl;
		mes = 0;
		cout << "Mes: " << endl;
		cin >> mes;
	}
	// Define cuáles meses son de 28-29, 30 o 31 días
	// Revisa si el día ingresado es válido según el mes ingresado 
	mesde31 = false;
	if (mes==1 || mes==3 || mes==5 || mes==7 || mes==8 || mes==10) {
		mesde31 = true;
		cout << "El mes " << mes << " trae 31 dias" << endl;
	}
	if (mes==4 || mes==6 || mes==9 || mes==11) {
		mesde30 = true;
			if (dia>30) {
			cout << "El mes " << mes << " trae 30 dias" << endl;
			cout << "Ingrese un dato válido para el día" << endl;
			cin >> dia;
		}
	}
	if (mes==2) {
		mesdefebrero = true;
			if (dia>29) {
			cout << "El mes " << mes << " trae 28 o 29 dias" << endl;
			cout << "Ingrese un dato válido para el día" << endl;
			cin >> dia;
		}
	}
	cout << "Año: " << endl;
	cin >> annio;
	// Revisa si el annio ingresado está en el rango de 0 a 9999
	if (annio>0 && annio<=9999) {
		annio = annio;
	} else {
		cout << "Ingrese un dato válido para el año: 1 a 9999 " << endl;
		mes = 0;
		cout << "Año: " << endl;
		cin >> annio;
	}
	// para todos los casos no detallados posteriormente, el día siguiente es uno más que el día actual en el mismo mes del mismo año 
	if (dia<32) {
		ndia = dia+1;
		nmes = mes;
		nannio = annio;
		// Revisa si el año es o no bisiesto
		if (annio%4==0) {
			tannio = "Bisiesto";
				if (annio%100==0) {
				if (annio%400==0) {
					tannio = "Bisiesto";
				} else {
					tannio = "No Bisiesto";
				}
			} else {
				tannio = "Bisiesto";
			}
		} else {
			tannio = "No bisiesto";
		}
		// inicia con la revisión de los casos especiales  
		// Escribe el día siguiente a la fecha dada según el mes y el tipo de año (bisiesto / no bisiesto)
		// si el dia es 31 y el mes es enero, marzo, mayo, julio, agosto u octubre.el siguiente día es 1 del mes siguiente del mismo año
		if (dia==31 && mesde31==true) {
			ndia = 1;
			nmes = mes+1;
			nannio = annio;
			cout << "La fecha del día siguiente es: " << ndia << "-" << nmes << "-" << nannio << endl;
		}
		// si el dia es 30 y el mes es abril, junio, septiembre o noviembre.el siguiente día es 1 del mes siguiente del mismo año 
		if (dia==30 && mesde30==true) {
			ndia = 1;
			nmes = mes+1;
			nannio = annio;
		}
		// para el caso del mes de febrero en general
		// si el dia es menor a 28 el siguiente día es el día siguiente será uno más que el día actual de febrero del mismo año 
		if (mes==2 && dia<28) {
			ndia = dia+1;
			nmes = 2;
			nannio = annio;
			cout << "La fecha del día siguiente es: " << ndia << "-" << nmes << "-" << nannio << endl;
		}
		// para el caso de febrero de un a�o bisiesto
		if (mes==2 && tannio=="Bisiesto") {
			// si el dia es 29 el siguiente día es 1 de marzo del mismo año
			if (dia==29) {
				ndia = 1;
				nmes = 3;
				nannio = annio;
				cout << "La fecha del día siguiente es: " << ndia << "-" << nmes << "-" << nannio << endl;
			}
			// si el dia es 28 el siguiente día es el 29 de febrero del mismo año
			if (dia==28) {
				ndia = 29;
				nmes = 2;
				nannio = annio;
			}
		}
		// para el caso de febrero de un a�o no bisiesto
		if (mes==2 && tannio=="No bisiesto") {
			// si el dia es 28 el siguiente día es 1 del mes de marzo del mismo año
			if (dia==28) {
				ndia = 1;
				nmes = 3;
				nannio = annio;
			}
			if (dia==29) {
				cout << "El mes " << mes << " trae 28 días porque el año no es bisiesto" << endl;
				cout << "Ingrese un dato válido para el día" << endl;
				cin >> dia;
				if (dia==28) {
					ndia = 1;
					nmes = 3;
					nannio = annio;
				}
			}
		}
		// para el caso del 31 de diciembre, el siguiente día es 1 de enero del siguiente año
		if (mes==12 && dia==31) {
			ndia = 1;
			nmes = 1;
			nannio = annio+1;
		}
		cout << "La fecha del día siguiente es: " << ndia << "-" << nmes << "-" << nannio << endl;
	}
	return 0;
}

