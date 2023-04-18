
SubProceso consultaProducto(i,productos,existencias,precios)
	
	
	
	Escribir("Lista de productos disponibles:")
	Para i <- 1 Hasta 5 Con Paso 1 Hacer
		Escribir i, ". ", productos[i], " - $", precios[i], " - existencias: ", existencias[i]
	FinPara
	Esperar Tecla
	Limpiar Pantalla
FinSubProceso

SubProceso seleccionProducto(i,productos,existencias,precios,opcion,cantidades,c,nombreCliente,idCliente,n,d,k)
	
	Para k<-1 Hasta 1 Con Paso 1 Hacer
		
		Escribir("Ingrese su nombre completo: ")
		Leer n
		nombreCliente[k]=n
		Escribir("Ingrese su número de identificación: ")
		Leer d 
		idCliente[k]=d
	FinPara
	
	consultaProducto(i,productos,existencias,precios)
	
	Escribir("ingrese cantidad de productos que desea comprar:")
	Leer c
	
Para i <- 1 Hasta c Con Paso 1 Hacer

	Escribir("Seleccione el número de producto que desea comprar (0 para salir): ")
	Leer opcion
	Si opcion <> 0 Entonces
		Si opcion >= 1 Y opcion <= 5 Entonces
			Si existencias[opcion] > 0 Entonces
				Escribir "Ingrese la cantidad de ", productos[opcion], " que desea comprar: "
				Leer cantidades[opcion]
				existencias[opcion] <- existencias[opcion] - cantidades[opcion]
			Sino
				Escribir "Lo sentimos, el producto seleccionado no se encuentra disponible"
			FinSi
		Sino
			Escribir "Opción inválida"
		FinSi
	FinSi
FinPara
total_compra <- 0
Para i <- 1 Hasta 5 Con Paso 1 Hacer
	total_compra <- total_compra + precios[i] * cantidades[i]
FinPara

Si total_compra > 0 Entonces
	Escribir "El total de la compra es $", total_compra
	Escribir("Seleccione la forma de pago (efectivo, tarjeta): ")
	Leer forma_pago
	Si forma_pago = "efectivo" Entonces
		Escribir("Pago recibido. Gracias por su compra.")
		Esperar Tecla
	Sino
		Escribir("La transacción ha sido procesada. Gracias por su compra.")
		Esperar Tecla
	FinSi
FinSi
Limpiar Pantalla
FinSubProceso
SubProceso devolucion(nombreCliente,idCliente,n,d,k)
	Escribir("Ingrese su nombre completo: ")
	Leer n
	Escribir("Ingrese su número de identificación: ")
	Leer d
	Para k<- 1 Hasta 1 Con Paso 1 Hacer
	si nombreCliente[k]=n Y idCliente[k] = d Entonces
		Escribir "Nombre: ",nombreCliente[k]," ID:",idCliente[k]
		Escribir "su devolucion fue exitosa"
		Esperar Tecla
	SiNo
		Escribir "No se encuentra registrado"
		Esperar Tecla
	FinSi
FinPara
Limpiar Pantalla
FinSubProceso


Algoritmo Punto5Taller2
	
	Definir nombreCliente Como Caracter
	Definir idCliente,i,c,k Como Entero
	Definir productos,nombre Como Caracter
	Definir precios Como Real
	Definir existencias Como Entero
	Definir cantidades Como Entero
	Definir total_compra Como Real
	Definir forma_pago Como Caracter
	Definir opcion Como Entero
	Definir j Como Logico
	
	Dimension productos[5],precios[5],existencias[5],cantidades[5],nombreCliente[1],idCliente[1]
	productos[1] <- "Paracetamol"
	productos[2] <- "Ibuprofeno"
	productos[3] <- "Amoxicilina"
	productos[4] <- "Vitaminas"
	productos[5] <- "Antiséptico"
	precios[1] <- 2000
	precios[2] <- 2500
	precios[3] <- 3000
	precios[4] <- 5000
	precios[5] <- 1500
	
	existencias[1] <- 50
	existencias[2] <- 40
	existencias[3] <- 30
	existencias[4] <- 20
	existencias[5] <- 10
	
	j <- Verdadero;
	
	Mientras j= Verdadero  Hacer
	Escribir "¡Bienvenido Droguería Mi Salud!";
	
	
	
	Escribir " Elegir Una Opcion";
	Escribir " 1 --> consulta de precios por producto";
	Escribir " 2 --> compra de producto ";
	Escribir " 3 --> Devolucion de producto ";
	Escribir " 4 --> para salir del Menu ";
	Escribir "Ingrese una Opcion:";
	
    Leer opcion;
	Escribir ""
	
	Segun opcion Hacer
		1:
			consultaProducto(i,productos,existencias,precios)
		2:
			seleccionProducto(i,productos,existencias,precios,opcion,cantidades,c,nombreCliente,idCliente,n,d,k)
		3:
			devolucion(nombreCliente,idCliente,n,d,k)
		4:
			j<-Falso;
			
		De Otro Modo:
			Escribir "No escogiste ninguna opción de (1-4)."
			Esperar Tecla
			
			
			
	FinSegun
FinMientras
	
FinAlgoritmo
