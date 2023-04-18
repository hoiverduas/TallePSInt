
SubProceso bienvenidoFiesta()
	
	Escribir " Ingrese su Nombre :";
	Leer nombre;
	
	Escribir "Ingrese sus Apellidos :";
	Leer apellidos;
	
	Escribir "Ingrese su Edad :";
	Leer edad;
	
	Si edad >= 18 Entonces
		Escribir nombre," ",apellidos," usted es mayor de edad, por lo tanto puede entrar a la fiesta.";
	SiNo
		Escribir  nombre," ",apellidos," usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devuélvase a su casa.";
	FinSi
	
FinSubProceso




Algoritmo Punto3Taller2
	Definir nombre Como Caracter
	Definir apellidos Como Caracter
	Definir edad Como Entero
	
	bienvenidoFiesta()
	
FinAlgoritmo
