Algoritmo CalcularPagoAgua
		
		DEFINIR nombre, direccion, barrio COMO CADENA
		DEFINIR estrato, consumoMensual COMO ENTERO
		DEFINIR valorMetroCubico COMO REAL
		DEFINIR valorBase, descuento, valorIVA, totalPagar COMO REAL
		valorMetroCubico <- 3000
		
		
		ESCRIBIR "Ingrese el nombre del cliente:"
		LEER nombre
		ESCRIBIR "Ingrese la direcci�n del cliente:"
		LEER direccion
		ESCRIBIR "Ingrese el barrio del cliente:"
		LEER barrio
		ESCRIBIR "Ingrese el estrato social del cliente (1-6):"
		LEER estrato
		ESCRIBIR "Ingrese el total de metros c�bicos consumidos en el mes:"
		LEER consumoMensual
		
		
		valorBase <- consumoMensual * valorMetroCubico
		
		
		SEG�N estrato HACER
	CASO 1:
		descuento <- valorBase * 0.05
	CASO 2:
		descuento <- valorBase * 0.04
	CASO 3:
		descuento <- valorBase * 0.03
	CASO 4:
		descuento <- valorBase * 0.02
	CASO 5, 6:
		descuento <- 0
	CASO CONTRARIO:
		ESCRIBIR "Estrato no v�lido. No se aplicar� descuento."
		descuento <- 0
FIN SEG�N


valorIVA <- (valorBase - descuento) * 0.10


totalPagar <- (valorBase - descuento) + valorIVA


ESCRIBIR "--------- Resumen de Pago ---------"
ESCRIBIR "Nombre del Cliente: ", nombre
ESCRIBIR "Direcci�n: ", direccion
ESCRIBIR "Barrio: ", barrio
ESCRIBIR "Estrato Social: ", estrato
ESCRIBIR "Metros c�bicos consumidos: ", consumoMensual
ESCRIBIR "Valor por metro c�bico: $", valorMetroCubico
ESCRIBIR "Valor base: $", valorBase
ESCRIBIR "Valor del descuento aplicado: $", descuento
ESCRIBIR "Valor IVA (10%): $", valorIVA
ESCRIBIR "TOTAL A PAGAR: $", totalPagar
ESCRIBIR "-----------------------------------"


	
FinAlgoritmo
