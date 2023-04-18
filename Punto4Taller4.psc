SubProceso   invertirFila(fila1,fila2)
	Definir matriz Como Entero
	Definir temp Como Entero
	Definir temp1 Como Entero
	Definir i Como Entero
	Definir n Como Entero
	Definir m Como Entero
	
	
	Dimension matriz[4,5]
	matriz[1,1] <- 1
	matriz[1,2] <- 2
	matriz[1,3] <- 3
	matriz[1,4] <- 4
	matriz[1,5] <- 5
	matriz[2,1] <- 6
	matriz[2,2] <- 7
	matriz[2,3] <- 8
	matriz[2,4] <- 9
	matriz[2,5] <- 10
	matriz[3,1] <- 11
	matriz[3,2] <- 12
	matriz[3,3] <- 13
	matriz[3,4] <- 14
	matriz[3,5] <- 15
	matriz[4,1] <- 16
	matriz[4,2] <- 17
	matriz[4,3] <- 18
	matriz[4,4] <- 19
	matriz[4,5] <- 20
	Escribir"Matriz Original";
	Para i = 1 Hasta 4
		Para j = 1 Hasta 5
			
			Escribir  matriz[i,j]," " Sin Saltar
		FinPara
		Escribir"";
	FinPara
	
	Para i = 1 Hasta 5/2
		
		temp = matriz[fila1,i]
		temp1 = matriz[fila2,i]
		
		matriz[fila1,i] = matriz[fila1,(5-i+1)]
		matriz[fila2,i] = matriz[fila2,(5-i+1)]
		
		matriz[fila1,(5-i+1)] = temp
		matriz[fila2,(5-i+1)] = temp1
		
		
		
	FinPara
	Escribir"";
	Esperar Tecla
	
	
	
	
	Escribir"Matriz Completa con Fila Invertidas";
	Para i = 1 Hasta 4
		Para j = 1 Hasta 5
			
			Escribir  matriz[i,j]," " Sin Saltar
		FinPara
		Escribir"";
	FinPara
	Esperar Tecla
FinSubProceso

Algoritmo miFuncion
	invertirFila(2,4)
	
FinAlgoritmo
