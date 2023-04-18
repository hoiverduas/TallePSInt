
SubProceso mayoMenor()
	Escribir "Ingrese su edad :";
	leer edad;
	
	Si edad < 18 Entonces
		Escribir "Usted aún es un niño(a).";
	SiNo
		Escribir "Usted es mayor de edad.";
		
	FinSi
FinSubProceso

Algoritmo Punto2Taller2
	Definir edad Como Entero
	
	mayoMenor()
	
FinAlgoritmo
