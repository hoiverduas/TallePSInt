
SubProceso ingreso(nombre,documento, marca,cilindraje,placa,observaciones,dia1,m1,an1)
	
	Para k<- 1 Hasta 1 Con Paso 1 Hacer
	Escribir "Ingresar  Nombre Completo Del Cliente :";
	Leer n; 
	nombre[k] = n;
	Escribir "Ingresar su ID :";
	Leer d ;
	documento[k] = d;
	Escribir "Ingresar Marca de la Moto:";
	Leer m ; 
	marca[k] = m;
	Escribir "Ingresar Cilindraje de la Moto:";
	Leer c;
	cilindraje[k] = c;
	Escribir "Ingresar Numero Placa:";
	Leer p; 
	placa[k] = p;
	Escribir "Observaciones del Ingreso:";
	Leer e; 
	Escribir "Ingrese dia de ingreso :";
	Leer d1; 
	dia1[k]=d1
	Escribir "Ingrese mes de ingreso :";
	Leer mes1; 
	m1[k] = mes1
	Escribir "Ingrese año de ingreso :";
	Leer a1;
	an1[k]=a1
	observaciones[k] = e;
	
	Escribir "Nombre Completo :",nombre[k];
	Escribir "Numero de Documento :",documento[k];
	Escribir "Marca :",marca[k] " Cilindraje :",cilindraje[k]," Placa :",placa[k];
	Escribir "Observaciones del Cliente: ",observaciones[k];
	Escribir "Dia :",dia1[k] " Mes :",m1[k]," Año :",an1[k];
	Esperar Tecla

FinPara

FinSubProceso


SubProceso retiro(nombre,documento, marca,cilindraje,placa,observaciones,dia1,m1,an1,dia2,m2,an2,novedades,repuestos)
	
	Para k<- 1 Hasta 1 Con Paso 1 Hacer
	Escribir "Ingresar  Nombre Completo Del Cliente :";
	Leer n; 
	
	Escribir "Ingresar su ID :";
	Leer d ;
	escribir "Ingrese dia de retiro :";
	Leer d2; 
	dia2[k]=d2
	Escribir "Ingrese mes de retiro :";
	Leer mes2; 
	m2[k] = mes2
	Escribir "Ingrese año de retiro :";
	Leer a2;
	an2[k]=a2
	Escribir "Ingrese las novedades encontradas :"
	Leer nove 
	novedades[k] = nove
	Escribir "Ingrese los repuestos utilizados :"
	Leer  repu 
	repuestos[k] = repu 
	
	Si nombre[k] = n  Y documento[k] = d Entonces
		encontrar = Verdadero
		
	FinSi
	Limpiar Pantalla
FinPara

	Si encontrar = Falso Entonces
		Escribir " no se encuentra en la base de datos "
		Esperar Tecla
	FinSi
	Si encontrar = Verdadero Entonces
		
		Para k<- 1 Hasta 1 Con Paso 1 Hacer
			
		Escribir "Nombre Completo :",nombre[k];
		Escribir "Numero de Documento :",documento[k];
		Escribir "Marca :",marca[k] " Cilindraje :",cilindraje[k]," Placa :",placa[k];
		Escribir "Observaciones del Cliente: ",observaciones[k];
		Escribir "Dia de entrada:",dia1[k] " Mes de entrada :",m1[k]," Año de entrada :",an1[k];
		Escribir "Dia de salida :",dia2[k] " Mes de salida :",m2[k]," Año de salida  :",an2[k];
		Escribir "Novedades :",novedades[k] " Repuestos:",repuestos[k]
		Esperar Tecla
	FinPara
	FinSi


FinSubProceso


SubProceso inventarios(repuesN,costo,nombre,documento, marca,cilindraje,placa,observaciones,dia1,m1,an1,dia2,m2,an2,novedades,repuestos)
	
	 Definir  totalcompra Como Entero
	Para k<- 1 Hasta 1 Con Paso 1 Hacer
	Escribir "Ingresar Numero Placa:";
	Leer p; 
	Si placa[k] = p Entonces
		
		encontrar = Verdadero
		
	FinSi
FinPara
Si encontrar = Falso Entonces
	Escribir "no se encuentra en la base de datos "
	Esperar Tecla
FinSi
Si encontrar = Verdadero Entonces
	Escribir ("Ingrese la cantidad de repuestos utilizados: ")
	Leer cant
	Para k<- 1 Hasta cant Con Paso 1 Hacer
		Escribir ("Ingrese el nombre del repuesto utilizado: ")
		Leer r
		repuesN[k]=r
		Escribir ("Ingrese el costo unitario del repuesto utilizado: ")
		Leer cost
		costo[k]= cost
		
	FinPara
	Limpiar Pantalla
	totalcompra = 0;
	Para k <- 1 Hasta cant Con Paso 1 Hacer
		totalcompra <- totalcompra + costo[k] 
	FinPara
	Para k<- 1 Hasta cant Con Paso 1 Hacer
		Escribir k, ". ", repuesN[k], " - $", costo[k]
		Esperar Tecla
		
		
	FinPara
	Para k<- 1 Hasta 1 Con Paso 1 Hacer
		
		Escribir "Nombre Completo :",nombre[k];
		Escribir "Numero de Documento :",documento[k];
		Escribir "Marca :",marca[k] " Cilindraje :",cilindraje[k]," Placa :",placa[k];
		Escribir "Observaciones del Cliente: ",observaciones[k];
		Escribir "Dia de entrada:",dia1[k] " Mes de entrada :",m1[k]," Año de entrada :",an1[k];
		Escribir "Dia de salida :",dia2[k] " Mes de salida :",m2[k]," Año de salida  :",an2[k];
		Escribir "Total a Pagar :",totalcompra 
		Esperar Tecla
	FinPara
	
	
	
	
	FinSi



FinSubProceso









Algoritmo Punto6Taller2
	Definir nombre,n,p,m,e Como Caracter
	Definir apellidos Como Caracter
	Definir opcion , cant Como Entero
	Definir documento,c,d,dia1,dia2,m1,m2,an1,an2,d1,mes1,a1 ,d2,mes2,a2 Como Entero
	Definir marca Como Caracter
	Definir cilindraje,repu,nove ,cost,costo Como Entero
	Definir placa Como Caracter
	Definir observasiones Como Caracter
	Definir novedades,repuestos Como Caracter
	Definir inventario ,r , repuesN Como Caracter
	Definir j Como Logico
	
	
	Dimension nombre[2],documento[2],marca[2],cilindraje[2],placa[2],observaciones[2]
	Dimension dia1[2],dia2[2],m1[2],m2[2],an1[2],an2[2],novedades[2],repuestos[2],costo[20],repuesN[20]
	
	Escribir "¡Taller De Motos Maquinista!";
	
	j <- Verdadero;
	
	Mientras j= Verdadero  Hacer
	Escribir " Elegir Una Opcion";
	Escribir " 1 --> Ingreso al Taller";
	Escribir " 2 --> Salida del Taller ";
	Escribir " 3 --> Inventario ";
	Escribir " 4 --> para salir del Menu ";
	Escribir "Ingrese una Opcion :"
    Leer opcion;
	
	Segun opcion Hacer
		1:
			ingreso(nombre,documento, marca,cilindraje,placa,observaciones,dia1,m1,an1)
		2:
			retiro(nombre,documento, marca,cilindraje,placa,observaciones,dia1,m1,an1,dia2,m2,an2,novedades,repuestos)
		3:
			inventarios(repuesN,costo,nombre,documento, marca,cilindraje,placa,observaciones,dia1,m1,an1,dia2,m2,an2,novedades,repuestos)
		4:
			j<-Falso;
			
		De Otro Modo:
			Escribir " La eleccion elejida no existe";
			
			
			
	FinSegun
	Limpiar Pantalla
FinMientras

FinAlgoritmo
