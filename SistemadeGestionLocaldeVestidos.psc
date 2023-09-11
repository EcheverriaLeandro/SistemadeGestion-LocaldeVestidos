Algoritmo SistemadeGestionLocaldeVestidos
	Definir Top, Corset, Bustier, Falda, FaldadeBrillo, Tutu Como real //se define primeramente las variables que van a almacenar los precios de los productos
	Definir CantidadTop, CantidadCorset, CantidadBustier, CantidadFalda, CantidadFaldadeBrillo, CantidadTutu Como real  //se definen los acumuladores para saber la cantidad de productos vendidos de cada uno
	Definir ElecciondeMenu Como entero //variable utilizada para ingresar al programa o ver la lista de precios
	Definir LLavedeRepetir Como Logico //se usa de llave para salir del bucle
	Definir EleccionFacturador, ValordeVenta Como Entero // variable utilizadas para el funcionamiento del facturador
	Definir GananciasTotales Como Real//variable utilizada para guardar el valor de las facturas
	
	Top<-2000					//	
	Corset<-2680					//
	Bustier<-3000				// Carga del listado de precios del cliente
	Falda<-7000					//
	FaldadeBrillo<-10000			//
	Tutu<-3000					//
	
	EleccionFacturador<-0		// Inicializacion de las variables utilizadas por el facturador en 0
	
	CantidadTop<-0				//
	CantidadCorset<-0			//
	CantidadBustier<-0			// Inicializacion de los contadores en 0
	CantidadFalda<-0				//
	CantidadFaldadeBrillo<-0		//
	CantidadTutu<-0				//
	
	LLavedeRepetir<-Falso		// inicializacion de valor logico en falso para el correcto funcionamiento del repetir
	
	Repetir
		Escribir "   _____________________________________________________________________________________________"		//
		Escribir "  |                                Bienvenido usuario <3                                        |"		//
		Escribir "  |                                                                                             |"		// Mensaje al usuario
		Escribir "  |                       Ingrese 1 si quiere ver la lista de precios                           |"		//
		Escribir "  |                       Ingrese 2 si quiere ingresar al facturador                            |"		//
		Escribir "  |                                                                                             |"		//
		Escribir "   ---------------------------------------------------------------------------------------------"		//
	
		leer ElecciondeMenu												// se lee la eleccion del usuario
	
		Repetir															//
			si ElecciondeMenu < 1 y ElecciondeMenu > 2 Entonces			//
				Escribir "La opcion elegida no coincide con las dadas"		//
				Escribir "ingrese 1 si quiere ver la lista de precios"		//
				Escribir "ingrese 2 si quiere ver la lista de precios"		//
				leer PrimeraEleccion 										//  consulta logica para evitar errores humanos
				Limpiar Pantalla											//
			SiNo															//
				LLavedeRepetir<-Verdadero									//
			FinSi															//
		Hasta Que LLavedeRepetir=Verdadero								//
	
		si ElecciondeMenu = 1 Entonces									//
			Escribir "la lista de precios actual es la siguiente:"			//
			Escribir "Top: " top											//
			Escribir "Corset: " Corset										//
			Escribir "Bustier: " Bustier									//  segmento donde se muestra la lista de precios al usuario
			Escribir "Falda: " Falda										//
			Escribir "Falda de Brillo: " FaldadeBrillo						//
			Escribir "Tutu: " Tutu											//
			Escribir "Precione Enter para volver al menu principal"		//
			Esperar Tecla
			Limpiar Pantalla
		FinSi
	Hasta Que ElecciondeMenu = 2 											// se itiliza este bucle para ahorrar linea de codigo y volver al menu principal
	
	Repetir
		ValordeVenta<-0																										//se necesita reiniciar el acumulador para cada venta
	
		Escribir "   _____________________________________________________________________________________________"		//
		Escribir "  |                                Bienvenido al facturador                                     |"		//
		Escribir "  |                           porfavor elija de a uno los item                                  |"		// Mensaje al usuario
		Escribir "  |            ingrese el numero y luego precione Enter para agregarlo a la compra              |"		//
		Escribir "  |                                                                                             |"		//
		Escribir "  |                                                                                             |"		//
		Escribir "   ---------------------------------------------------------------------------------------------"		//
		Escribir "                                                                                                "		//
		Escribir "   ______________________________________________"		//
		Escribir "  | 1 Top                                        |"		//
		Escribir "  | 2 Corset                                     |"  	//  productos 
		Escribir "  | 3 Bustier                                    |"		//
		Escribir "  | 4 Falda                                      |"		//
		Escribir "  | 5 Falda de brillo                            |"		//
		Escribir "  | 6 Tutu                                       |"		//
		Escribir "   ----------------------------------------------"		//
	
		Repetir
			Leer EleccionFacturador
			Mientras EleccionFacturador<0 o EleccionFacturador>6 Hacer		//
					Escribir "La opcion elegida no coincide con las dadas"		//
					Escribir "elija una de las opciones dadas"					//
					leer EleccionFacturador										//  consulta logica para evitar errores humanos
			Fin Mientras														//
			
			Segun EleccionFacturador Hacer																			//
				1:																									//
					Escribir "Se agrego: Top"																		//
					ValordeVenta<-ValordeVenta+top																	//
					Escribir "Ingrese otro item para segur con la venta o precione 0 para terminar la venta"		//
					CantidadTop<-CantidadTop+1		//contador de unidades vendidas de top
				2:																									//
					Escribir "Se agrego: Corset"																	//
					ValordeVenta<-ValordeVenta+Corset																//
					Escribir "Ingrese otro item para segur con la venta o precione 0 para terminar la venta"		//
					CantidadCorset<-CantidadCorset+1		//contador de unidades vendidas de Corset
				3:																									//
					Escribir "Se agrego: Bustier"																	//
					ValordeVenta<-ValordeVenta+Bustier																//
					Escribir "Ingrese otro item para segur con la venta o precione 0 para terminar la venta"		//
					CantidadBustier<-CantidadBustier+1		//contador de unidades vendidas de Bustier
				4:																									// estructura del facturador
					Escribir "Se agrego: Falda"																	//
					ValordeVenta<-ValordeVenta+Falda																	//
					Escribir "Ingrese otro item para segur con la venta o precione 0 para terminar la venta"		//
					CantidadFalda<-cantidadFalda+1		//contador de unidades vendidas de falda
				5:																									//
					Escribir "Se agrego: Falda de brillo"															//
					ValordeVenta<-ValordeVenta+FaldadeBrillo															//
					Escribir "Ingrese otro item para segur con la venta o precione 0 para terminar la venta"		//
					CantidadFaldadeBrillo<-CantidadFaldadeBrillo+1		//contador de unidades vendidas de falda de brillo
				6:																									//
					Escribir "Se agrego: Tutu"																		//
					ValordeVenta<-ValordeVenta+Tutu																	//
					Escribir "Ingrese otro item para segur con la venta o precione 0 para terminar la venta"		//
					CantidadTutu<-CantidadTutu+1		//cantador de undidades vendidas de tutu
			Fin Segun																								//
		Hasta Que EleccionFacturador = 0 																			//
		Escribir "El valor total de esta venta es: " ValordeVenta													//
		
		GananciasTotales<-GananciasTotales+ValordeVenta		//acumulador para guardar las ganancias de todas las ventas
		
		Escribir "                                                                                                "		//
		Escribir "   _____________________________________________________________________________________________"		//
		Escribir "  |                                                                                             |"		//
		Escribir "  |                          Si quiere realizar otra venta ingrese 1                            |"		// Mensaje al usuario
		Escribir "  |                                                                                             |"		//
		Escribir "  |                          Si quiere salir del facturador ingrese 0                           |"		//
		Escribir "  |                                                                                             |"		//
		Escribir "   ---------------------------------------------------------------------------------------------"		//
		Escribir "                                                                                                "		//
		
		Leer ElecciondeMenu
		Limpiar Pantalla
		
	Hasta Que ElecciondeMenu = 0
	
	Escribir "                                                                                                "		//
	Escribir "   _____________________________________________________________________________________________"		//
	Escribir "                                                                                               "		//
	Escribir "                            las ganacias totales del dia fueron ",GananciasTotales            		// muestra de ganancia total
	Escribir "                                                                                               "		//
	Escribir "   ---------------------------------------------------------------------------------------------"		//
	Escribir "                                                                                                "		//
	
	Escribir "   ______________________________________________"		//
	Escribir "   unidades vendidas hoy                        "		//
	Escribir "   ______________________________________________"		//
	Escribir "   Top                 ",CantidadTop                     //
	Escribir "   Corset              ",CantidadCorset                  //  muestra de unidades vendidas 
	Escribir "   Bustier             ",CantidadBustier                 //
	Escribir "   Falda               ",CantidadFalda                   //
	Escribir "   Falda de brillo     ",CantidadFaldadeBrillo			//
	Escribir "   Tutu                ",CantidadTutu	 	    		//
	Escribir "   ----------------------------------------------"		//
	
	Escribir "                                                                                                "		//
	Escribir "   _____________________________________________________________________________________________"		//
	Escribir "  |                                                                                             |"		//
	Escribir "  |                          ¡que tenga buen dia! :D nos vemos mañana                           |"		// mensaje final
	Escribir "  |                                                                                             |"		//
	Escribir "  |                           preciona enter para cerrar el programa                            |"		//
	Escribir "   ---------------------------------------------------------------------------------------------"		//
	Escribir "                                                                                                "		//
	
	Esperar Tecla	
	
FinAlgoritmo
