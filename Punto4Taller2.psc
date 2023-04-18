
SubProceso registroUsuario(k,nombre,direccion,telefono,documento,n,t,d,docu)
	Para k<-1 Hasta 1 Con Paso 1 Hacer
		
		Escribir "Ingrese su nombre completo:"
		Leer n 
		nombre[k] = n
		
		Escribir "Ingrese su dirección:"
		Leer d
		direccion[k] = d
		
		Escribir "Ingrese su número de teléfono:"
		Leer t
		telefono[k] = t
		
		Escribir "Ingrese su documento:"
		Leer docu
		documento[k]=docu
		Escribir "Registro exitoso. ¡Bienvenido/a, ", nombre[k], "!"
		Esperar Tecla
		
		
	FinPara
FinSubProceso

SubProceso alquilerPelicula(pelicula,nombre,direccion,telefono,documento,c,k,fecha1, fecha2,n,t,d,docu,c1) 
	
	Escribir "Películas disponibles"
	Escribir ""
	Escribir " 1 --> Avatar";
	Escribir " 2 -->  Duro de matar";
	Escribir " 3 --> Rapido ";
	Escribir ""
	Escribir "Ingrese su Opcion:"
	Leer c1
	
	Si  c1 > 3 Entonces
		
		Escribir "Pelicula no se encuentra disponible "
		Esperar Tecla
		
	FinSi
	
	Para k<- 1 Hasta 1 Con Paso 1 Hacer
		c[k]=c1
		si nombre[k]="" Entonces
			Escribir  "No se encuentra en la base de datos"
			Esperar Tecla
		SiNo
			
			Escribir "Nombre: ",nombre[k]," Direccion : ",direccion[k]," Tele : ",telefono[k]," ID:",documento[k]
			Esperar Tecla
			
			Para k<- c1 Hasta c1 Con Paso 1 Hacer
				
				
					
					
					Escribir "Pelicula alquilada : ",pelicula[k]
					encontrar=Verdadero
					Esperar Tecla
				
				
			FinPara
		FinSi
		
	FinPara
	

	Escribir ""
	si encontrar = Verdadero Entonces
		
		tiempoMonto(fecha1, fecha2dia1, mes1, anio1dias, meses, anios,diasTotales,n,t,d,docu)
	FinSi
	
	
	
	
	
	
	
FinSubProceso
SubProceso tiempoMonto(fecha1, fecha2dia1, mes1, anio1dias, meses, anios,diasTotales,n,t,d,docu)
	Escribir "Ingrese dia alquiler: "
    Leer dia1
    Escribir "Ingrese mes de alquiler: "
    Leer mes1
	Escribir "Ingrese año de alquiler: "
    Leer ano1
	
	Escribir "Ingrese dia de entrega: "
    Leer dia2
    Escribir "Ingrese mes de entrega: "
    Leer mes2
	Escribir "Ingrese año de entrega: "
    Leer ano2
	
    Si dia1 > 31 o dia2 > 31 o mes1 > 12 o mes2 >12   Entonces
		Escribir "Datos incorretos"
		
	SiNo
		// Calcular la diferencia en días
		dias = (anio2 - anio1) * 365 + (mes2 - mes1) * 30 + (dia2 - dia1)
		
		// Calcular la diferencia en meses
		meses = ((anio2 - anio1) * 12 + (mes2 - mes1))*30
		
		// Calcular la diferencia en años
		anios = (anio2 - anio1)*365
		diasTotales =  (dias+meses+anios)
		monto = (dias+meses+anios)*10000
		Escribir "Total de dias ", diasTotales," Monto a Pagar : ",monto
		Esperar Tecla
	FinSi
FinSubProceso

SubProceso recibirPelicula(nombre,telefono,documento,k,direccion,pelicula,c)
	
	Definir estado,problema Como Caracter
	
	 
	Escribir "Ingrese su nombre completo:"
	Leer n 
	
	
	Escribir "Ingrese su ID:"
	Leer docu
	
	Para k<- 1 Hasta 1 Con Paso 1 Hacer
		c1=c[k]
		si nombre[k]=n Y documento[k] = docu Entonces
			
	
			
			Escribir "Nombre: ",nombre[k]," Direccion : ",direccion[k]," Tele : ",telefono[k]," ID:",documento[k]
			Esperar Tecla
			
			Para k<- c1 Hasta c1 Con Paso 1 Hacer
				
				Escribir "Pelicula alquilada : ",pelicula[c1]
				encontrar=Verdadero
				Esperar Tecla
				
				
			FinPara
		FinSi
		
	FinPara
	
	si encontrar= Falso Entonces
		Escribir "no se encuentra registrado"
		Esperar Tecla
	FinSi
	
	
	si encontrar= Verdadero Entonces
		Escribir "¿La película está en buen estado? Escriba "," si " ," O "," no "
		leer estado
		Si estado = "no" Entonces
			Escribir "Por favor, especifique el problema con la película:"
			Leer problema
			Escribir "La película ", pelicula[c1], " fue devuelta con problema: ",problema
			Esperar Tecla
		SiNo
			
			Escribir "La película  ", pelicula[c1], "  fue devuelta correctamente"
			Esperar Tecla
		Fin Si
		
	FinSi
FinSubProceso


Algoritmo Punto4Taller2
	Definir nombre, direccion, telefono, pelicula,n,t,d Como Caracter 
	Definir documento,k,c,docu,c1 como entero
	Definir j,encontrar Como Logico
	Dimension  nombre[2], direccion[2], telefono[2] , pelicula[3],documento[2],c[2]
	Definir fecha1, fecha2 Como Caracter
    Definir dia1, mes1, anio1 Como Entero
    Definir dia2, mes2, anio2 Como Entero
    Definir dias, meses, anios,diasTotales Como Entero
	
	pelicula[1] = "Avatar"
	pelicula[2] = "Duro de matar"
	pelicula[3]=  "Rapido"
	
	j <- Verdadero;
	
	Mientras j= Verdadero  Hacer
		
		
		Escribir "Menu de Usuario";
		Escribir "1.--> Registrar Usuario";
		Escribir "2.--> Peliculas disponible ";
		Escribir "3.--> Recibir película";
		Escribir "4.--> Salir Del Sistema";
		Escribir "Ingrese una Opcion:";
		Leer opcio;
		
		
		Segun opcio Hacer
			1:
				registroUsuario(k,nombre,direccion,telefono,documento,n,t,d,docu)
				
			2:
				alquilerPelicula(pelicula,nombre,direccion,telefono,documento,c,k,fecha1, fecha2,n,t,d,docu,c1) 
				
			3:
				recibirPelicula(nombre,telefono,documento,k,direccion,pelicula,c)
			4:
				j<-Falso;
			De Otro Modo:
				Escribir "No escogiste ninguna opción de (1-4)."
				Esperar Tecla
		Fin Segun
		Limpiar Pantalla
	FinMientras
	
FinAlgoritmo
