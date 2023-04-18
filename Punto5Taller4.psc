
SubProceso   tabla(l,x,z)
	
	Definir n Como Logica
	Definir matriz Como Entero
	Definir fila Como Entero
	Dimension matriz[100,100]
	
	para k<-1 hasta x Con Paso x  Hacer
		
		para j<-1 hasta z hacer
			matriz[k,j]= (k*j)
			
		finpara
	finpara
	para k<-x hasta x Con Paso x hacer
		para j<-1 hasta z hacer
			
			Escribir  "     ",l, j,"x",k Sin Saltar;
		finpara
	finpara
	
FinSubProceso


SubProceso   tablaResultado(g,m)
	
	Definir k Como Entero
	Definir j Como Entero
	Definir n Como Logica
	Definir matriz Como Entero
	Definir fila Como Entero
	Dimension matriz[100,100]
	
	k<-1;
	j<-1;
	l<-1;
	
	para k<-1 hasta (g+1) hacer
		para j<-1 hasta (m+1) hacer
			matriz[k,j]= (g+1)*(m+1)
		finpara
	finpara
	para k<-1 hasta 1 hacer
		para j<-1 hasta 1 hacer
			Escribir m+1,"x",g+1,"=",matriz[k,j];
		finpara
	finpara
	Esperar Tecla
	Limpiar Pantalla
FinSubProceso


Algoritmo Punto5Taller4
	n<-Verdadero;
	Mientras n= Verdadero  Hacer
		Escribir "-------------------------------------------------------------------------------------------------------"
		Escribir "                                                COLUMNA"
		Escribir "-------------------------------------------------------------------------------------------------------"
		Escribir "        0","        1"  ,"          2"  ,"         3" ,"         4" ,"         5","         6" ,"         7","         8","         9"   
		
		
		
		Escribir "-------------------------------------------------------------------------------------------------------"
		
		
		tabla("  ",1,10);
		Escribir "   -    |0"
		tabla("  ",2,10);
		Escribir "   -    |1"
		tabla("  ",3,10);
		Escribir "   -    |2       -->  F"
		tabla("  ",4,10);
		Escribir "   -    |3       -->  I"
		tabla("  ",5,10);
		Escribir "   -    |4       -->  L"
		tabla("  ",6,10);
		Escribir "   -    |5       -->  A"
		tabla("  ",7,10);
		Escribir "   -    |6       -->  S"
		tabla("  ",8,10);
		Escribir "   -    |7"
		tabla("  ",9,10);
		Escribir "   -    |8"
		tabla(" ",10,10);
		Escribir "   -    |9"
		Escribir ""
		Escribir ""
		Escribir "Bienvenido a la APP de Tablas de Multiplicar";
		Escribir ""
		Escribir "Ingrese fila:";
		Leer p;
		Escribir ""
		Escribir "Ingrese columna:";
		Leer q;
		tablaResultado(p,q)
		Limpiar Pantalla
	FinMientras
FinAlgoritmo
