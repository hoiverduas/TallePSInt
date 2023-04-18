SubProceso almacenamiento(w,u,d,nombre,telefono)
	Si w <= 3 Entonces
		Para k<-1 Hasta w Con Paso 1 Hacer
			
			Escribir "ingrese su nombre completo:",k
			Leer u;
			nombre[k] = u ;
			Escribir "ingrese su numero de telefono:",k
			Leer d;
			telefono[k] = d ;
			
			
			
		FinPara
		
		Para k<-1 Hasta w Con Paso 1 Hacer
			Escribir "Nombre Completo: ", nombre[k] " Numero de Telefono: ",telefono[k] ;
			
			Esperar Tecla
		FinPara
		
		
		si telefono[1]=telefono[2] o telefono[1]=telefono[3] o telefono[2]=telefono[3] Entonces
			Escribir " Telefono Ingresado ya se Encuentra Almacenado "
			Esperar Tecla
		FinSi
	SiNo
		Escribir "Solo Puede Almacenar Máximo 3 Contactos."
		Esperar Tecla
		
	FinSi
FinSubProceso

SubProceso contacto(q,z,nombre,telefono,v,x,k,w)
	
	Si l=0 Entonces
		Escribir "Ingrese Nombre de Contacto que Desea Buscar:"
		Leer v;
		Escribir "Ingrese telefono de Contacto que Desea Buscar:"
		Leer x;
		Para k<-1 Hasta w Con Paso 1 Hacer
			
			Si v = nombre[k] Y x=telefono[k] Entonces
				Escribir "Nombre completo del contacto es: ",v," en la posicio ",k
				Escribir "Numero del contacto es: ",x," en la posicio ",k
				encontrar= Verdadero
				Esperar Tecla
			FinSi
			
			
		FinPara
	
				
			
			
			
		
		
		
		
	FinSi
	Si encontrar = Falso Entonces
		
		Escribir "Contactos no se encuentra "
	FinSi
	
	Esperar Tecla
FinSubProceso

SubProceso eliminarContacto(w,nombre,telefono,l,eliminar,k)
	Escribir "Ingrese Nombre de Contacto que Desea eliminar:"
	Leer m;
	Escribir "Ingrese telefono de Contacto que Desea eliminar:"
	Leer n;
	
	Para k<-1 Hasta w Con Paso 1 Hacer
		
		Si m = nombre[k] Y n=telefono[k] Entonces
			Escribir "Nombre completo del contacto eliminado: ",m," en la posicio ",k
			Escribir "Numero del contacto es: ",n," en la posicio ",k
			encontrar= Verdadero
			Esperar Tecla
			
		FinSi
	FinPara
	
	
	Si encontrar = Falso Entonces
		
		Escribir "Contactos no se encuentra "
		Esperar Tecla
		
		
	FinSi
	
	Si encontrar = Verdadero Entonces
		
	
	Escribir "ingrese la Posicion del contacto que desea Eliminar :"
	Leer eliminar;
	
	Para k<-eliminar Hasta 2 Con Paso 1 Hacer
		nombre[k] <-nombre[k+1];
		telefono[k] <-telefono[k+1];
	FinPara
	
	Para k<-1 Hasta 1 Con Paso 1 Hacer
		
		si telefono[k] >= 1 Entonces
			Escribir "Numeros de contactos en la base de datos "
			Escribir "Nombre Completo: ", nombre[k] " Numero de Telefono: ",telefono[k] ;
		SiNo
			Escribir "No hay contacto almacenado"
		FinSi
		
		
		l<-l+1;
		Esperar Tecla
	FinPara
FinSi

FinSubProceso

Algoritmo sin_titulo
	Definir u Como Caracter
	Definir k Como Entero
	Definir j Como Logico
	Definir l Como Entero
	Definir nombre Como Caracter
	Definir d Como Entero
	Definir telefono Como Entero
	Definir eliminar Como Entero
	Definir opcio Como Entero
	Definir v Como Caracter
	Definir x Como Entero
	Definir q Como Caracter
	Definir z Como Entero
	Definir m Como Caracter
	Definir n Como Entero
	Definir w Como Entero
	Definir encontrar Como Logico
	Dimension nombre[3];
	Dimension telefono[3];
	j <- Verdadero;
	l<- 0;
	Mientras j= Verdadero  Hacer
		
		
		Escribir "Menu de Usuario";
		Escribir "1.--> Para Almacenar Contacto";
		Escribir "2.--> Para Buscar Contacto";
		Escribir "3.--> Para Eliminar contacto";
		Escribir "4.--> Salir Del Sistema";
		Escribir "Ingrese una Opcion:";
		Leer opcio;
		Si opcio=1 Entonces
			Escribir "Ingrese Cantidad de Usuario que Desea Registrar:"
			Leer w;
		FinSi
		
		Segun opcio Hacer
			1:
				almacenamiento(w,u,d,nombre,telefono)
				
			2:
				contacto(q,z,nombre,telefono,v,x,k,w)
			3:
				eliminarContacto(w,nombre,telefono,l,eliminar,k)
			4:
				j<-Falso;
			De Otro Modo:
				Escribir "No escogiste ninguna opción de (1-4)."
				Esperar 5 Segundos
		Fin Segun
		Limpiar Pantalla
	FinMientras
	
FinAlgoritmo
