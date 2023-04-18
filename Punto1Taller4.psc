Algoritmo Punto1Taller4
	Definir numAzar Como Entero
	Definir num Como Entero
	Definir numUsu Como Entero
	Definir indice Como Entero
	Definir i Como Entero
	Dimension num[5];
	
	
	
	
	Escribir "ingresar 5 numeros"
	para i <-1 hasta 5 hacer
		
		Escribir "ingresar Posicion #: ","",i-1
		Leer numUsu;
		num[i]=numUsu;
		
		finpara
		
		para i <-1 hasta 5 hacer
			
			Escribir "[",i-1,"]","=", num[i]
			
		finpara
FinAlgoritmo
