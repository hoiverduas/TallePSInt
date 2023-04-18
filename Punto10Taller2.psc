
SubProceso ingre()
	Escribir "Cuanto Desea Ingresar :";
	Leer ingreso;
	Si ingreso > 0 Entonces
		saldo<-1200000.0+ingreso;
		Escribir "El Saldo en su Cuenta es : ",saldo;
		Esperar Tecla
	SiNo
		Escribir "Su Ingreso no Debe Ser Negativo : ";
		Esperar Tecla
	FinSi
	
FinSubProceso


SubProceso r <- retiros(saldo)
	
	
	Escribir "Cuanto Desea Retirar :";
	Leer retiro;
	Si retiro>saldo Entonces
		Escribir " Los Retiros en su cuenta no pueden ser mayor al valor que tiene en la cuenta.";
		Esperar Tecla
	SiNo
		saldo<-1200000.0 - retiro;
		Escribir " El Saldo en su Cuenta es : ",saldo;
		Esperar Tecla
		
	FinSi
	
FinSubProceso

SubProceso consultas(saldo)
	Escribir "Saldo Disponible :",saldo;
	Esperar Tecla
FinSubProceso

Algoritmo Punto10Taller2
	
	Definir usuario Como Caracter
	Definir clave Como Entero
	Definir opcion Como Entero
	Definir cuenta Como Caracter
	Definir saldo Como Real
	Definir lado Como Real
	Definir retiro Como Real
	Definir ingreso Como Real
	Definir j Como Logico
	
	j <- Verdadero;
	
	Mientras j= Verdadero  Hacer
		
		Escribir "¡Bienvenido A Su Banco Fiel!";
		
		saldo<-1200000.0;
		cuenta<-"123-456765-89"
		
		
		Escribir " Ingrese el Usuario :";
		Leer usuario;
		Escribir " Ingrese la clave del Cajero:";
		Leer clave;
		
		Limpiar Pantalla
		
		Si usuario = "Hoiver" Y clave = 1234 Entonces
			
			Escribir " Hola,Hoiver";
			Escribir " Cuenta de Ahorro",cuenta;
			Escribir ""
			
			Escribir " Transacciones Principales";
			
			Escribir " 1 --> Para Realizar Ingresos";
			Escribir " 2 --> Para Hacer Retiros ";
			Escribir " 3 --> consultar Saldo ";
			Escribir " 4 --> para salir del Menu ";
			Leer opcion;
		SiNo
			Escribir " Error Clave y Usuario incorecto";
			Esperar Tecla
		FinSi
		
		
		Segun opcion Hacer
			1:
				ingre()
			2:
				x <- retiros(saldo)
			3:
				consultas(saldo)
			4:
				j<-Falso;
				
			De Otro Modo:
				Escribir " La eleccion elejida no existe";
				
				
				
		FinSegun
	Limpiar Pantalla
	FinMientras
	
	
FinAlgoritmo
