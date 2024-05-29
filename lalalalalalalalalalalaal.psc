Algoritmo sin_titulo
	Art_My_Ganancia = 0
	Mayor_Ganancia = 0
	Ganancia_mayor = 1
	Venta_Primera_Quincena = 0
	Venta_Segunda_Quincena = 0
	Venta_Primera_Semana = 0
	ventasArticulo5Dia16 = 0
	VentaTotalMes = 0
	Escribir 'Ingrese N articulo: '
	Leer Art
	Mientras Art!=0 Hacer
		Art_Act = Art
		Ganancia = 0
		Mientras Art==Art_Act Hacer
			Escribir 'Ingrese el Dia:'
			Leer Dia
			Escribir 'Ingrese la Cantidad Vendida: '
			Leer CantVendida
			VentaTotalMes = VentaTotalMes + CantVendida
			Escribir 'Ingrese el Costo:'
			Leer Costo
			Escribir 'Ingrese el Precio de Venta:'
			Leer PrecioVenta
			Ganancia = Ganancia+(PrecioVenta-Costo)*CantVendida
			Si Dia > 15 Entonces
				Venta_Segunda_Quincena = Venta_Segunda_Quincena + CantVendida
			SiNo
				Venta_Primera_Quincena = Venta_Primera_Quincena + CantVendida
				Si Dia <= 7 Entonces
					Venta_Primera_Semana = Venta_Primera_Semana + CantVendida
				FinSi
			FinSi
			Escribir 'Ingrese el N articulo: '
			Leer Art
		FinMientras
		Si Ganancia_mayor==1 Entonces
			Venta_Segunda_Quincena = CantVendida+1
			Ganancia_Mayor = 0
			Mayor_Ganancia = Ganancia
			Art_My_Ganancia = Art_Act
		SiNo
			Si Ganancia>Mayor_Ganancia Entonces
				Mayor_Ganancia = Ganancia
				Art_My_Ganancia = Art_Act
			FinSi
		FinSi
		Si Art_Act==5&&Dia==16 Entonces
			ventasArticulo5Dia16 = ventasArticulo5Dia16+CantVendida
		FinSi
	FinMientras
	Si ventasArticulo5Dia16>0 Entonces
		Escribir 'Cantidad de ventas del articulo 5 el dia 16: ',ventasArticulo5Dia16
	SiNo
		Escribir 'No se detectaron ventas del articulo 5 el dia 16.'
	FinSi
	Escribir 'El articulo con mayor ganancias fue el: ',Art_My_Ganancia
	Escribir 'Art Vendido Primera Quincena: ',Venta_Primera_Quincena
	Escribir 'Art Vendido Segunda Quincena: ',Venta_Primera_Quincena
	PV_PrimerSemana = (Venta_Primera_Semana / VentaTotalMes) * 100 
	Escribir 'El porcentaje de ventas de la primer semana fue de: ',PV_PrimerSemana " % "
FinAlgoritmo
