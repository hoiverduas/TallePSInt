SubProceso   numerosPrimos(limit)
	Definir i, j Como Entero
	Definir primos Como Logico
	Definir resultado Como Cadena
	Definir lista_primos Como Cadena
	
	Dimension primos[limit+1]
	Para i = 2 Hasta limit
		primos[i] = Verdadero
	FinPara
	Para i = 2 Hasta Raiz(limit)
		Si primos[i] Entonces
			Para j = i*i Hasta limit Con Paso i
				primos[j] = Falso
			FinPara
		Finsi
	FinPara
	Para i = 2 Hasta limit
		Si primos[i] Entonces
			resultado <- resultado + ConvertirATexto(i) + " "
		Finsi
	FinPara
	lista_primos <- Isita_primos + "Los numeros primos entre 1 y 1000 son:" + resultado
	Escribir (lista_primos)
FinSubProceso

Algoritmo miFuncion
	numerosPrimos(1000)
	
FinAlgoritmo
