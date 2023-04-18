Algoritmo Punto4Taller3
	Definir k Como Entero
	Definir j Como Entero
	Definir m Como Entero
	Definir l Como Entero
	k<-0;
	j<-0;
	l<-0;
	Escribir "Bienvenido a la APP de Tablas de Multiplicar";
	Escribir "Ingrese el Numero de la Tabla que Desea Crear:";
	Leer l;
	para k<-l hasta l hacer
		para j<-1 hasta 10 hacer
			m=k*j
			Escribir k,"x",j,"=",m;
		finpara
	finpara
FinAlgoritmo
