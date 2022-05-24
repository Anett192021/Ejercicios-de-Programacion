
#include<stdio.h>
using namespace std;


int main() {
	int ano;
	int a�o;
	int dia;
	int mes;
	bool mesde31;
	int nano;
	int na�o;
	int ndia;
	int nmes;
	string tano;
	string ta�o;
	cout << "Ingrese una fecha abajo: dia mes a�o" << endl;
	cout << "D�a:" << endl;
	cin >> dia;
	cout << "Mes: " << endl;
	cin >> mes;
	cout << "A�o: " << endl;
	cin >> ano;
	if (dia>0 && dia<31) {
		dia = dia;
	} else {
		cout << "Ingrese un dato v�lido para el d�a" << endl;
		dia = 0;
		cout << "D�a: " << endl;
		cin >> dia;
	}
	if (dia>30 && mes==4) {
		cout << "Ingrese un dato v�lido para el d�a" << endl;
		dia = 0;
		cout << "D�a: " << endl;
		cin >> dia;
	} else {
		dia = dia;
	}
	if (dia>30 && mes==6) {
		cout << "Ingrese un dato v�lido para el d�a" << endl;
		dia = 0;
		cout << "D�a: " << endl;
		cin >> dia;
	} else {
		dia = dia;
	}
	if (dia>30 && mes==9) {
		cout << "Ingrese un dato v�lido para el d�a" << endl;
		dia = 0;
		cout << "D�a: " << endl;
		cin >> dia;
	} else {
		dia = dia;
	}
	if (dia>30 && mes==11) {
		cout << "Ingrese un dato v�lido para el d�a" << endl;
		dia = 0;
		cout << "D�a: " << endl;
		cin >> dia;
	} else {
		dia = dia;
	}
	if (mes==2 && ano%4>0 && dia>28) {
		cout << "Ingrese un dato v�lido para el d�a. Este a�o febrero solo tiene 28 d�as" << endl;
		dia = 0;
		cout << "D�a: " << endl;
		cin >> dia;
	} else {
		dia = dia;
	}
	if (mes>0 && mes<=12) {
		mes = mes;
	} else {
		cout << "Ingrese un dato v�lido para el mes: 1 a 12 " << endl;
		mes = 0;
		cout << "Mes: " << endl;
		cin >> mes;
	}
	if (ano>0 && ano<=9999) {
		ano = ano;
	} else {
		cout << "Ingrese un dato v�lido para el a�o: 1 a 9999 " << endl;
		mes = 0;
		cout << "A�o: " << endl;
		cin >> ano;
	}
	// Si dia =29 y mes = 2 y residuo a�o/4 = 0 y residuo a�o/400 = 0 y residuo a�o/100 > 0 entonces FDS = ndia =1, nmes = 3 y na�o = a�o
	if (ano%4==0 && ano%400==0) {
		tano = "Bisiesto";
	} else {
		tano = "No bisiesto";
	}
	if (mes==2 && tano=="Bisiesto") {
		if (dia==29) {
			ndia = 1;
			nmes = 3;
			nano = ano;
			cout << "La fecha del d�a siguiente es: " << ndia << "-" << nmes << "-" << nano << endl;
		} else {
			cout << "Fin" << endl;
		}
	} else {
	}
	if (mes==2 && tano=="Bisiesto") {
		if (dia==28) {
			ndia = 29;
			nmes = 2;
			nano = ano;
			cout << "La fecha del d�a siguiente es: " << ndia << "-" << nmes << "-" << nano << endl;
		} else {
			cout << "Fin" << endl;
		}
	} else {
	}
	if (mes==2 && tano=="No bisiesto") {
		if (dia==28) {
			ndia = 1;
			nmes = 3;
			nano = ano;
			cout << "La fecha del d�a siguiente es: " << ndia << "-" << nmes << "-" << nano << endl;
		} else {
			cout << "Fin" << endl;
		}
	} else {
	}
	// si el dia es 31 y el mes es enero, marzo, mayo, julio, agosto u octubre.el siguiente d�a es 1 del mes siguiente del mismo a�o
	if (mes==1) {
		mesde31 = true;
	} else {
		mesde31 = false;
	}
	if (mesde31==true) {
		ndia = 1;
		nmes = mes+1;
		nano = ano;
		cout << "La fecha del d�a siguiente es: " << ndia << "-" << nmes << "-" << nano << endl;
	} else {
		cout << "Fin" << endl;
	}
	ndia = dia+1;
	nmes = mes;
	nano = ano;
	cout << "La fecha del d�a siguiente es: " << ndia << "-" << nmes << "-" << nano << endl;
	cout << "Fin" << endl;
	return 0;
}

