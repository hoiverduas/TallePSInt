


SubProceso registro(direccion,documento,nombre)
	
	Escribir "¡Bienvenido Pasteleria Don Carlos!";
	Escribir "Por favor Registrarse";
	
	Escribir ""
	Para k <- 1 Hasta 1 Con Paso 1 Hacer
	Escribir "Ingresar su Nombre completo :";
	Leer n
	nombre[k] = n;
	Escribir "Ingresar su direccion : ";
	Leer d 
	direccion[k] = d;
	Escribir "Ingresar su ID : ";
	Leer docu
	documento[k] = docu;
	Escribir ""
	Escribir "Nombre Completo :",nombre[k]
	Escribir "Numero de Documento :",documento[k];
	Escribir "Direccion:",direccion[k];
	Esperar Tecla
	
FinPara
Limpiar Pantalla

FinSubProceso

SubProceso p <- PorcionCosto(nombre,documento,direccion,torta,k,precios,opcion,p,l)
	
	
	Para k <- p Hasta p Con Paso 1 Hacer
		torta[k] = torta[k+0]
		
		
			
		
		si torta[k]=torta[k] Entonces
			
			
		FinSi
		Escribir "Ingrese numero de  Porcione de 8 o 16 : ";
		Leer porciones
		
		
		si porciones <> 8 Y  porciones <> 16 Entonces
		    Escribir "datos ingresados no son validos"
			l=l-1
			Esperar Tecla
		SiNo
			

		si  porciones =8 Entonces
			
			
				
			
			Escribir "Tipo de decoracion que desea: ";
			Leer decoracion;
			Escribir ""
			Escribir "Ingrese Cuantas Tortas: ";
			Leer cantidad;
			Para k <- 1 Hasta 1 Con Paso 1 Hacer
		Escribir "Nombre Completo :",nombre[k]
		Escribir "Numero de Documento :",documento[k];
		Escribir "Direccion:",direccion[k];
		
	         FinPara
	
		Escribir "Numero de Porciones:",porciones;
		Para k <- p Hasta p Con Paso 1 Hacer
			pr=precios[k]
			si p = 2  Entonces
				pr=precios[k+1]
			FinSi
			si  p = 3 Entonces
				pr=precios[k+2]
			FinSi
		FinPara
		
		Escribir "costo de su compra: ",pr*cantidad;
		Para k <- p Hasta p Con Paso 1 Hacer
			tor=torta[k]
			
		FinPara
		Escribir "Cantidad de Tortas Vendidas: ",cantidad," Torta de :",tor;
		Escribir "Total de Tortas Vendidas: ",cantidad*l
		
		Escribir "Tipo de decoracion :",decoracion
		Esperar Tecla
		
	
	
	FinSi
	
	
	Si  porciones= 16 Entonces
		
		Escribir "Tipo de decoracion que desea: ";
		Leer decoracion;
		Escribir ""
		Escribir "Ingrese Cuantas Tortas: ";
		Leer cantidad;
		Para k <- 1 Hasta 1 Con Paso 1 Hacer
			Escribir "Nombre Completo :",nombre[k]
			Escribir "Numero de Documento :",documento[k];
			Escribir "Direccion:",direccion[k];
			
		FinPara
		
		Escribir "Numero de Porciones:",porciones;
		Para k <- p Hasta p Con Paso 1 Hacer
			pr= precios[k+1]
			si p = 2  Entonces
				pr=precios[k+2]
			FinSi
			si   p = 3 Entonces
				pr=precios[k+3]
			FinSi
		FinPara
		Escribir "costo de su compra: ",pr*cantidad;
		Para k <- p Hasta p Con Paso 1 Hacer
			tor=torta[k]
			
		FinPara
		Escribir "Cantidad de Tortas Vendidas: ",cantidad," Torta de :",tor;
		Escribir "Tipo de decoracion :",decoracion
		Esperar Tecla
	
	FinSi
	
FinSi



	
	
	



FinPara


	
FinSubProceso




Algoritmo Punto8Taller2
	
	Definir  nombre,direccion,n,d,torta Como Caracter	
	Definir documento,docu,k,opcion,p,l Como Entero
	Definir precios Como Real
	Definir j Como Logico
	Dimension nombre[5],direccion[5],documento[5],torta[3],precios[6],opcion[4]
	
	torta[1]="Arequipe"
	torta[2]="Mora"
	torta[3]="Tres Leche"
	precios[1]=23.651
	precios[2]=39.753
	precios[3]=20.355
	precios[4]=38.500
	precios[5]=56.452
	precios[6]=72.704
	
	j <- Verdadero;
	l <- 0
	
	Mientras j= Verdadero  Hacer
		
		l = l+1
		
		registro(direccion,documento,nombre)
		
	Escribir " Tortas Disponibles ";
	
	Escribir " 1 --> Arequipe";
	Escribir " 2 -->  Mora";
	Escribir " 3 --> Tres Leche ";
	Escribir " 4 --> para salir del Menu ";
	Escribir " Ingrese una opcion :";
	Leer p 
	Para k <- 1 Hasta 1 Con Paso 1 Hacer
		
	opcion[k] = p;	
       FinPara

		Segun p Hacer
			1:
				x <- PorcionCosto(nombre,documento,direccion,torta,k,precios,opcion,p,l)
			2:
				z <- PorcionCosto(nombre,documento,direccion,torta,k,precios,opcion,p,l)
			3:
				l <- PorcionCosto(nombre,documento,direccion,torta,k,precios,opcion,p,l)
			4:
				j<-Falso;
				
			De Otro Modo:
				Escribir " La eleccion elejida no existe";
				
				
				
		FinSegun
		Limpiar Pantalla
		
	FinMientras
	
	
	
	
FinAlgoritmo
