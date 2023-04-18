SubProceso b<-bajoPeso(indice,nombre,apellidos,documento,peso,estatura)
	Si indice  < 18.5   Entonces
		
		Escribir "Nombre Completo :",nombre," ",apellidos;
		Escribir "Numero de Documento :",documento;
		Escribir "Peso : ",peso "KG " " Estatura : " ,estatura,"m " " --> Bajo de peso: " indice ; 
		Esperar Tecla
		
	FinSi
FinSubProceso

SubProceso n<-pesoNormal(indice,nombre,apellidos,documento,peso,estatura)
	
		
	Si  (indice > 18.5 Y indice < 24.9) Entonces
		
		Escribir "Nombre Completo :",nombre," ",apellidos;
		Escribir "Numero de Documento :",documento;
		Escribir "Peso : ",peso "KG " " Estatura : " ,estatura, "m " " --> Normal: " indice ; 
		Esperar Tecla
	FinSi
	
	
FinSubProceso

SubProceso  c <- obeso(indice,nombre,apellidos,documento,peso,estatura)
	Si indice > 24.9 Entonces
		
		
		
		Escribir "Nombre Completo :",nombre," ",apellidos;
		Escribir "Numero de Documento :",documento;
		Escribir "Peso : ",peso "KG " " Estatura : " ,estatura,"m "  " --> Obeso : " indice ; 
		Esperar Tecla
		
	FinSi
FinSubProceso

Algoritmo Punto7Taller2
	
	Definir nombre Como Caracter
	Definir apellidos Como Caracter
	Definir opcion Como Entero
	Definir documento Como Entero
	Definir peso Como Real
	Definir estatura Como Real
	Definir indice Como Real
	Definir j Como Logico

	j <- Verdadero;
	
	Mientras j= Verdadero  Hacer
	Escribir "¡Secretaría de Salud !";
	Escribir "Calculo de Índice de masa corporal";
	
	
	
	Escribir "Ingresar su Nombre :";
	Leer nombre;
	Escribir "Ingresar su Apellidos :";
	Leer apellidos;
	Escribir "Ingresar su ID :";
	Leer documento;
	Escribir "Ingresar su Peso en Kg :";
	Leer peso;
	Escribir "Ingresar su Estatura en mts:";
	Leer estatura;
	indice = (peso)/(estatura*estatura);
	
    v <- bajoPeso(indice,nombre,apellidos,documento,peso,estatura)
	x <- pesoNormal(indice,nombre,apellidos,documento,peso,estatura)
	z <- obeso(indice,nombre,apellidos,documento,peso,estatura)
	
	
	Limpiar Pantalla
FinMientras


FinAlgoritmo
