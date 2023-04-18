Algoritmo Punto5Taller3
	Definir u Como Logico
	Definir k Como Entero
	Definir nombre Como Caracter
	u<-Verdadero;
	
	Mientras u = Verdadero  Hacer
		
		
		Escribir "Menu de Usuario";
		Escribir "1.--> Capturar Nombre";
		Escribir "2.--> Saludar Persona";
		Escribir "3.--> Salir Del Sistema";
		Escribir "Ingrese una Opcion:";
		Leer k;
		
		
		Segun k Hacer
			1:
				Escribir "Por Favor Ingrese su Nombre:"
				Leer nombre;
				Escribir "Su Nombre es:",nombre;
				
				Esperar 5 Segundos
				
				
			2:
				Escribir "Hola,Caul es tu Nombre:"
				Leer nombre;
				Escribir "Hola ",nombre," Como Estas es un Placer Conocerte mi Nombre es Hoiver"
				
				Esperar 5 Segundos
			3:
				u<-Falso;
			De Otro Modo:
				Escribir "No escogiste ninguna opción de (1-3)."
				Esperar 5 Segundos
		Fin Segun
		Limpiar Pantalla
	FinMientras
	
FinAlgoritmo
		
		
		
	