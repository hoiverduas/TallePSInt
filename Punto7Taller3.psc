

SubProceso  estacionamiento(k,n,nombre,placa,telefono,marca,hora_entrada,minuto_entrada, hora_salida,minuto_salida,total_hora)
	
	Definir horaLlegada Como Entero
	
	
	Dimension horaLlegada[5];
    
	Para k<-1 Hasta n Con Paso 1 Hacer
		Si k <= 5 Entonces
			Escribir "Ingrese la hora de entrada "
			Leer h_e;
			hora_entrada[k] = h_e;
			Escribir "Ingrese minutos de entrada "
			Leer m_e;
			minuto_entrada[k]=m_e;
			Escribir "ingrese su nombre completo:"
			Leer nom;
			nombre[k] = nom ;
			Escribir "ingrese su numero de telefono:"
			Leer tele;
			telefono[k] = tele ;
			Escribir "ingrese la marca del vehiculo :"
			Leer m;
			marca[k] = m ;
			Escribir "ingrese numero placa del Vehiculo:"
			Leer p;
			placa[k] = p;
			
			
			Limpiar Pantalla
			
		SiNo
			Escribir "Solo Puede Almacenar Máximo 5 Vehículos."
		FinSi
		
	FinPara
	
	Limpiar Pantalla
	
	Para k<-1 Hasta n Con Paso 1 Hacer
		Escribir "Nombre Completo: ", nombre[k] " Numero de Telefono: ",telefono[k] ;
		Escribir "Marca:  ", marca[k] "  Placa:  ",placa[k] ;
		Escribir "Hora:  ", hora_entrada[k] "  Min:  ",minuto_entrada[k] ;
		
		
		Esperar Tecla
	FinPara
FinSubProceso


SubProceso consulta(n,l,k,nombre,placa,telefono,marca)
	
	
	
	encontrar= Falso;
	l=0;
	Si l=0 Entonces
		
		Escribir "Ingrese Nombre de Usuario que Desea Buscar:"
		Leer nombreUsuario;
		Escribir "Ingrese Telefono de Usuario que Desea Buscar:"
		Leer telUsuario;
		Escribir "Ingrese Marca del vehiculo:"
		Leer marcaUsuario;
		Escribir "Ingrese Placa del Vehiculo:"
		Leer placaUsuario;
		Para k<-1 Hasta n Con Paso 1 Hacer
			
			
			
			
			Si  nombre[k] = nombreUsuario Y telefono[k] = telUsuario Y marca[k] = marcaUsuario Y placa[k] = placaUsuario  Entonces
				Escribir "Su vehiculo se encuentra en el Parqueadero"
				Escribir "Nombre completo del Usuario:  ",nombreUsuario
				Escribir "Numero del Usuario: ",telUsuario
				Escribir "Marca del Vehiculo del Usuario:  ",marcaUsuario
				Escribir "Placa del Vehiculo del Usuario:  ",placaUsuario
				Escribir "Placa del Vehiculo del Usuario:  ",placaUsuario
		
				
				encontrar= Verdadero;
				Esperar Tecla
				
				
				
			FinSi
			
		FinPara
		
	SiNo
		Escribir "Ingrese Nombre de Usuario que Desea Buscar:"
		Leer nombreUsuario;
		Escribir "Ingrese Telefono de Usuario que Desea Buscar:"
		Leer telUsuario;
		Escribir "Ingrese Marca del vehiculo:"
		Leer marcaUsuario;
		Escribir "Ingrese Placa del Vehiculo:"
		Leer placaUsuario;
		l=0;
		
		Para k<-1 Hasta n-1 Con Paso 1 Hacer
			
			Si nombreUsuario = nombre[k] Y telUsuario=telefono[k] Y marcaUsuario=marca[k] Y placaUsuario =placa[k]  Entonces
				
				Escribir "Su vehiculo se encuentra en el Parqueadero"
				Escribir "Nombre completo del Usuario:  ",nombreUsuario
				Escribir "Numero del Usuario: ",telUsuario
				Escribir "Marca del Vehiculo del Usuario:  ",marcaUsuario
				Escribir "Placa del Vehiculo del Usuario:  ",placaUsuario
				
				encontrar= Verdadero;
				Esperar Tecla
				
				
			FinSi
			
		FinPara
		
		
		
	FinSi
	Si no encontrar Entonces
		Escribir "Usuario no exite o Fue Elimindo de la base de datos"
	FinSi
	Esperar Tecla
FinSubProceso


SubProceso retiroParqueadero(e,n,l,nombre,placa,telefono,marca,eliminar,hora_entrada,minuto_entrada, hora_salida,minuto_salida,total_hora )
	
	Escribir "Retirar Vehiculo del parqueadero"
	
	Escribir "Ingrese Nombre de Usuario :"
	Leer nombreUsuario;
	Escribir "Ingrese telefono del Usuario :"
	Leer telUsuario;
	Escribir "Ingrese Marca del vehiculo:"
	Leer marcaUsuario;
	Escribir "Ingrese Placa del Vehiculo:"
	Leer placaUsuario;
	
	
	Para k<-1 Hasta n Con Paso 1 Hacer
		
		
		
		
		Si nombreUsuario = nombre[k] Y telUsuario=telefono[k] Y marcaUsuario=marca[k] Y placaUsuario =placa[k]  Entonces
			Escribir "Nombre completo del Usuario:  ",nombreUsuario," Posicio: ",k
			Escribir "Numero del Usuario: ",telUsuario, " Posicio: ",k
			Escribir "Marca del Vehiculo del Usuario:  ",marcaUsuario," Posicion:  ",k
			Escribir "Placa del Vehiculo del Usuario:  ",placaUsuario," Posicio:  ",k
			 encontrar= Verdadero
			
			Esperar Tecla
		FinSi
		
	FinPara
	
	
	Si encontrar = Falso Entonces
	
	Escribir " no se necuentran usuarios en la base datos  ";
FinSi
	
	
	
	Si encontrar = Verdadero Entonces
		
	
	Escribir "ingrese la Posicion del Usurio que se desea Retirar del Parqueadero :"
	Leer eliminar;
	


	Para k<-eliminar Hasta 4 Con Paso 1 Hacer
		nombre[k] <-nombre[k+1];
		telefono[k] <-telefono[k+1];
		marca[k] <-marca[k+1];
		placa[k] <-placa[k+1];
		
		
	FinPara
	
	Para k<-1 Hasta n-1 Con Paso 1 Hacer
		Si k >= 1 Entonces
			
		
		Escribir "Nombre Completo: ", nombre[k] " Numero de Telefono: ",telefono[k] ;
		Escribir "Placa: ", placa[k] " Marca: ",marca[k] ;
	              Esperar Tecla
	  SiNo
		Escribir " no se necuentran usuarios en la base datos  ";
	   FinSi
	
		l<-l+1;
		Esperar Tecla
	FinPara
	Para k<-1 Hasta 1 Hacer
		Escribir "Ingrese la hora de Salida :"
		Leer h_s;
		hora_salida[k] = h_s;
		Escribir "Ingrese minutos de Salida : "
		Leer m_s;
		minuto_salida[k]=m_s;
		
	FinPara
	

sum1<-0
sum2<-0

sum1 <- sum1+hora_entrada[eliminar]



Para k<-1 Hasta 1 Hacer
	sum2 <- sum2+hora_salida[k]
	
FinPara

Si hora_entrada[k]>24 o hora_salida[k] >24 o minuto_entrada[k] > 60 o minuto_salida[k] > 60 Entonces
	
	Escribir "La hora es incorrecta"
	
	
SiNo
	Si sum1 > sum2
		Escribir "ingrese la hora de salida  correcta"
		
	SiNo
		
		total_hora = sum2 - sum1
		monto= total_hora*1000;
		Escribir "El monto a pagar por hora : ",total_hora," hora es: $ ",monto
		Esperar Tecla
		
		
		
		
	FinSi
	
	Para k<-eliminar Hasta 4 Con Paso 1 Hacer
		hora_entrada[k] <-hora_entrada[k+1];
		minuto_entrada[k] <-minuto_entrada[k+1];
	
	FinPara
	
FinSi
FinSi


	
	Esperar Tecla
FinSubProceso






Algoritmo Punto2Taller4
	
	Definir j Como Logico
	Definir k Como Entero
	Definir l Como Entero
	
	Definir total_hora,monto Como Entero
	
	Dimension hora_entrada[5],minuto_entrada[5], hora_salida[5],minuto_salida[5]
	
	
	Definir opcio Como Entero
	
	Definir m Como Caracter
	Definir p Como Caracter
	Definir nom Como Caracter
	Definir tele Como Entero
	
	Definir h_s,h_e,m_s,m_e Como Entero
	
	
	
	Dimension nombre[5];
	Dimension telefono[5];
	Dimension placa[5];
	Dimension marca[5];
	
	
	
	Definir sum1 Como Entero
	Definir sum2 Como Entero
	Definir nombre Como Caracter
	Definir placa Como Caracter
	Definir marca Como Caracter
	Definir telefono Como Entero
	
	Definir nombreUsuario Como Caracter
	Definir marcaUsuario Como Caracter
	Definir placaUsuario Como Caracter
	Definir telUsuario Como Entero
	
	
	j <- Verdadero;
	Mientras j= Verdadero  Hacer
		
	
	Escribir "APP Parqueadero El Guardián";
	Escribir "Menu de Usuario";
	Escribir "1.--> Ingreso al parqueadero";
	Escribir "2.--> consultar";
	Escribir "3.--> retirar del parqueadero";
	Escribir "4.--> Salir Del Sistema";
	Escribir "Ingrese una Opcion:";
	
	Leer opcio;
	Si opcio=1 Entonces
		Escribir "Ingrese Cantidad de Usuario que Desea Registrar:"
		Leer n;
	FinSi
	
	Segun opcio Hacer
		1:
			 estacionamiento(k,n,nombre,placa,telefono,marca,hora_entrada,minuto_entrada, hora_salida,minuto_salida,total_hora)

		2:
			consulta(n,l,k,nombre,placa,telefono,marca)
						
		3:	
			retiroParqueadero(e,n,l,nombre,placa,telefono,marca,eliminar,hora_entrada,minuto_entrada, hora_salida,minuto_salida,total_hora )
			
		4:	
			
			j<-Falso;
		De Otro Modo:
			Escribir "No escogiste ninguna opción de (1-4)."
			Esperar Tecla
	Fin Segun
	Limpiar Pantalla
FinMientras
	
FinAlgoritmo

