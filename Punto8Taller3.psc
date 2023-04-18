
SubProceso registrarUsuario(k,n,nombre,telefono,documento)
	
	
	Si n > 8 Entonces
		Escribir "capacidad máxima en la escuela son 8 usuarios"
		Esperar Tecla
		Limpiar Pantalla
	SiNo
		Para k<-1 Hasta n Con Paso 1 Hacer
			Escribir "ingrese su nombre completo:"
			Leer nom;
			nombre[k] = nom ;
			Escribir "ingresar Numero de documento :"
			Leer d;
			documento[k] = d ;
			Escribir "ingrese su numero de telefono:"
			Leer tele;
			telefono[k] = tele ;
		FinPara
		Para k<-1 Hasta n Con Paso 1 Hacer
			Escribir "Nombre Completo: ", nombre[k] " Numero de Telefono: ",telefono[k] " Numero de Documento: ",documento[k] ;
			
			Esperar Tecla
		FinPara
	FinSi
FinSubProceso

SubProceso consultar(encontrar,h,do,k,n,pregunta1,pregunta2,nombre,telefono,documento)
	
	Escribir "ingrese su nombre completo:"
	Leer h;
	Escribir "ingresar Numero de documento :"
	Leer do;
	Escribir "ingrese su numero de telefono:"
	Leer t;
	
   
	
	Para k<-1 Hasta n Con Paso 1 Hacer
		
		
		Si  h = nombre[k] Y t = telefono[k] Y do=documento[k] Entonces
			Escribir "Nombre Completo: ", h " Numero de Telefono: ",t " Numero de Documento: ",do," ID :",k 
			
			encontrar = Verdadero
			Esperar Tecla
			
				
				
		
			
		FinSi
		
		
		
		
	FinPara
	
	
	Si encontrar = Falso Entonces
		Escribir "no se encuentra en la base de datos "
		Esperar Tecla
	FinSi
	
	
	Si encontrar = Verdadero Entonces
		
	
	
             
	
	Escribir "Felicitaciones a Terminado el Curso de Conduccion"
	
	Escribir "Para Realizar el Examen Ingrese su Pocision o de lo Contrario (0):"
	Leer a;
	
	Limpiar Pantalla
	
		
		
		Para k<-a Hasta a Con Paso 1 Hacer
			Escribir "1. Sus ruedas deben estar mirando hacia adelante, a menos que:"
			
			Escribir "Esté esperando a dar la vuelta a la izquierda en un semáforo."
			Escribir "Esté estacionado en una colina o en una acceso inclinado."
			Escribir "Esté estacionado a un costado a nivel de la calle donde no hay acera."
			
			Escribir "Primera opcion ingrese 1"
			Escribir "Primera opcion ingrese 2"
			Escribir "Primera opcion ingrese 3"
			Escribir "ingrese su respueta:"
			Leer p1;
			Pregunta1[k] = p1 ;
			
			Esperar Tecla
			Limpiar Pantalla
			
			Escribir "2. Cuando maneje en niebla, lluvia o nieve, debe usar:"
			
			Escribir "Sus luces bajas."
			Escribir "Sus luces altas"
			Escribir "Solo luces de manejo."
			
			Escribir "Primera opcion ingrese 1"
			Escribir "Primera opcion ingrese 2"
			Escribir "Primera opcion ingrese 3"
			
			Escribir "ingrese su respueta:"
			Leer p2;
			pregunta2[k] = p2 ;
			
			Esperar Tecla
			Limpiar Pantalla
			
			
		FinPara
		
	FinSi

FinSubProceso


SubProceso resultados(h,do,n,pregunta1,pregunta2,nombre,telefono,documento)
	Escribir "ingrese su nombre completo:"
	Leer nomber;
	Escribir "ingresar Numero de documento :"
	Leer docu;
	
	
	Para k<-1 Hasta n Con Paso 1 Hacer
	
		Si nomber = nombre[k] Y docu=documento[k] Y pregunta2[k]=1 Y pregunta1[k]=2 Entonces
			Escribir "Nombre Completo: ", nomber " Numero de Documento: ",docu," Posicion :",k
			Escribir "aprobo"
			encontrar = Verdadero
			Esperar Tecla
		
			
		FinSi
	FinPara
	
	Si encontrar = Falso Entonces
		Escribir "no se encuentra en la base de datos o no ha presentado examen  "
		Esperar Tecla
	FinSi
	

	
FinSubProceso



Algoritmo  Punto8Taller3 
	
	Definir k Como Entero
	Definir j Como Logico
	Definir l Como Entero
	Definir x Como Entero
	
	
	Definir docu Como Entero
	Definir telen Como Entero
	Definir p Como Entero
	Definir marca Como Caracter
	
	
	Definir eliminar Como Entero
	Definir opcio Como Entero
	Definir nombreUsuario Como Caracter
	Definir marcaUsuario Como Caracter
	Definir placaUsuario Como Caracter
	Definir telUsuario Como Entero
	
	Definir d Como Entero
	Definir t Como Entero
	Definir do Como Entero
	
	Definir h Como Caracter
	Definir a Como Entero
	Definir p1 Como Entero
	Definir p2 Como Entero
	Definir pregunta1 Como Entero
	Definir pregunta2 Como Entero
	Definir n Como Entero
	
	Definir tele Como Entero
	Definir encontrar Como Logico
	Dimension nombre[8];
	Dimension telefono[8];
	Dimension documento[8];
	Dimension Pregunta1[8]
	Dimension Pregunta2[8]
	Definir nomber Como Caracter
	j <- Verdadero;
	l<- 0;
	
	
	Mientras j= Verdadero  Hacer
		
		Escribir "APP Escuela Automovilística El Maestro ";
		Escribir "Menu de Usuario";
		Escribir "1.--> Para Registrar usuario";
		Escribir "2.--> Para Consultar usurios que hayan presentado el Curso";
		Escribir "3.--> Para resultados de la prueba del curso";
		Escribir "4.--> Salir Del Sistema";
		Escribir "Ingrese una Opcion:";
		Leer opcio;
		
		Si opcio=1 Entonces
			Escribir "Ingrese Cantidad de Usuario que Desea Registrar:"
			Leer n;
		FinSi
		
		Segun opcio Hacer
			1:
				registrarUsuario(k,n,nombre,telefono,documento)
			2:
				consultar(encontrar,h,do,k,n,pregunta1,pregunta2,nombre,telefono,documento)
				
			3:
				resultados(h,do,n,pregunta1,pregunta2,nombre,telefono,documento)
			4:
				j<-Falso;
			De Otro Modo:
				Escribir "No escogiste ninguna opción de (1-4)."
				Esperar 5 Segundos
		Fin Segun
		Limpiar Pantalla
	FinMientras
	
	
FinAlgoritmo
