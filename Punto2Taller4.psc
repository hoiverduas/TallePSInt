SubProceso numeroAlea()
	
	Definir i Como Entero
	Definir num Como Entero
	Definir numAzar Como Entero
	Dimension num[100];
	
	para i <-1 hasta 100 hacer
		numAzar<-AZAR((100)+1);
		
		num[i] = numAzar;
		
	finpara
	Escribir ""
	
	Escribir "Números pares:"
	
	para i <-1 hasta 100 hacer
		si num[i] mod 2 == 0 Entonces
			Escribir  num[i],"," Sin Saltar
		FinSi
		
		
	finpara
	Escribir ""
	
	Escribir "Números impar:"
	
	para i <-1 hasta 100 hacer
		si num[i] mod 2 == 1 Entonces
			Escribir  num[i],"," Sin Saltar
		FinSi
		
		
	finpara
	Escribir ""
	
FinSubProceso



Algoritmo Punto2Taller4
	numeroAlea()
	
FinAlgoritmo
