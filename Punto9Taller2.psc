

SubProceso triangul()
	
	Escribir " Ingrese Base Del Teiangulo :";
	Leer base;
	Escribir " Ingrese Altura Del Teiangulo :";
	Leer altura;
	triangulo<- (base*altura)/2;
	Escribir " El Area Del Triangulo Es : ",triangulo;
	Esperar Tecla
FinSubProceso

SubProceso rectan()
	
	Escribir " Ingrese El Lado Del Rectangulo :";
	Leer lado;
	Escribir " Ingrese El Ancho Del Rectangulo :";
	Leer ancho;
	rectangulo<- (lado*ancho)
	Escribir " El Area Del Triangulo Es : ",rectangulo;
	Esperar Tecla
	
FinSubProceso

SubProceso trape()
	Escribir " Ingrese Base Del Trapecio :";
	Leer base;
	Escribir " Ingrese Altura Del Trapecio :";
	Leer altura;
	trapecio<- (base+altura)*(altura)/2;
	Escribir " El Area Del Triangulo Es : ",trapecio;
	Esperar Tecla
FinSubProceso



Algoritmo Punto9Taller2
	Definir trapecio Como Real
	Definir altura Como Real
	Definir opcion Como Entero
	Definir base Como Real
	Definir triangulo Como Real
	Definir lado Como Real
	Definir rectangulo Como Real
	Definir ancho Como Real
	Definir j Como Logico
	
	j <- Verdadero;
	
	Mientras j= Verdadero  Hacer
		Escribir " Elegir Una Opcion";
		Escribir " 1 --> Para Calcular El Area De Un Triángulo";
		Escribir " 2 --> Para Calcular El Area De Un Rectángulo ";
		Escribir " 3 --> Para Calcular El Area De Un Trapecio ";
		Escribir " 4 --> para salir del Menu ";
		Escribir " Ingrese una opcion :";
		Leer opcion;
		
		Segun opcion Hacer
			1:
				triangul()
			2:
				rectan()
			3:
				trape()
			4:
				j<-Falso;
				
			De Otro Modo:
				Escribir " La eleccion elejida no existe";
				
				
				
		FinSegun
		Limpiar Pantalla
	FinMientras
	
FinAlgoritmo
