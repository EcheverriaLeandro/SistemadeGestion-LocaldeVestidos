Algoritmo SistemadeGestionLocaldeVestidos
	Definir Top, Corset, Bustier, Falda, FaldadeBrillo, Tutu Como real //se define primeramente las variables que van a almacenar los precios de los productos
	Definir CantidadTop, CantidadCorset, CantidadBustier, CantidadFalda, CantidadFaldadeBrillo, CantidadTutu Como real  //se definen los acumuladores para saber la cantidad de productos vendidos de cada uno
	Definir PrimeraEleccion Como entero //variable utilizada para ingresar al programa o ver la lista de precios
	Definir LLavedeRepetir Como Logico //se usa de llave para salir del bucle
	
	Top<-2000					//	
	Corset<-2680					//
	Bustier<-3000				// Carga del listado de precios del cliente
	Falda<-7000					//
	FaldadeBrillo<-10000			//
	Tutu<-3000					//
	
	CantidadTop<-0				//
	CantidadCorset<-0			//
	CantidadBustier<-0			// Inicializacion de los contadores en 0
	CantidadFalda<-0				//
	CantidadFaldadeBrillo<-0		//
	CantidadTutu<-0				//
	
	LLavedeRepetir<-Falso		// inicializacion de valor logico en falso para el correcto funcionamiento del repetir
	
	Escribir "   _____________________________________________________________________________________________"		//
	Escribir "  |                                Bienvenido usuario <3                                        |"		//
	Escribir "  |                                                                                             |"		// Mensaje al usuario
	Escribir "  |                       Ingrese 1 si quiere ver la lista de precios                           |"		//
	Escribir "  |                                                                                             |"		//
	Escribir "   ---------------------------------------------------------------------------------------------"		//
	
	leer PrimeraEleccion
	
	Repetir															//
		si PrimeraEleccion <> 1 Entonces								//
			Escribir "La opcion elegida no coincide con las dadas"		//
			Escribir "ingrese 1 si quiere ver la lista de precios"		//
			leer PrimeraEleccion 										//  consulta logica para evitar errores humanos
			Limpiar Pantalla											//
		SiNo															//
			LLavedeRepetir<-Verdadero									//
		FinSi															//
	Hasta Que LLavedeRepetir=Verdadero								//
	
	si PrimeraEleccion = 1 Entonces									//
		Escribir "la lista de precios actual es la siguiente:"			//
		Escribir "Top: " top											//
		Escribir "Corset: " Corset										//
		Escribir "Bustier: " Bustier									//  segmento donde se muestra la lista de precios al usuario
		Escribir "Falda: " Falda										//
		Escribir "Falda de Brillo: " FaldadeBrillo						//
		Escribir "Tutu: " Tutu											//
	FinSi																//

FinAlgoritmo
