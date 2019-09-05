/*
 * definir remiseras y clientes.
 */
import clientes.*

//REMISERAS

object roxana {
	method precioViaje(cliente,kilometros){
		return(cliente.precioPorKilometro() * kilometros)
	}
}

object gabriela {
	method precioViaje(cliente,kilometros){
		return(cliente.precioPorKilometro() * kilometros * 1.2)
	}
}

object mariela {
	method precioViaje(cliente,kilometros){
		return(cliente.precioPorKilometro() * kilometros).max(50)
	}
}

object juana {
	method precioViaje(cliente,kilometros){
		if(kilometros <= 8){
			return(100)
		}
		else {
			return(200)
		}
	}
}
object lucia {
	var remiseraARemplazar
	
	
	method remplazarARemisera(remisera){
		remiseraARemplazar = remisera
	}
	
	method precioViaje(cliente,kilometros){
		return(remiseraARemplazar.precioViaje(cliente,kilometros))
	}
}


/////OFICINA DE LA COOPERATIVA/////

object oficina {
	var primeraOpcion
	var segundaOpcion
	method asignarRemiseras(remisera1, remisera2){
		primeraOpcion = remisera1
		segundaOpcion = remisera2
	}
	method cambiarPrimerRemiseraPor(remisera) {primeraOpcion = remisera}
	method cambiarSegundaremisera(remisera) {segundaOpcion = remisera}
	
	method intercambiarRemiseras(){
		var primera = primeraOpcion
		primeraOpcion = segundaOpcion
		segundaOpcion = primera
	}
	method remiseraElegidaParaViaje(cliente,kilometros){
		var precioDeLaPrimera = primeraOpcion.precioViaje(cliente,kilometros)
		var precioDeLaSegunda = segundaOpcion.precioViaje(cliente,kilometros)
		
		if(precioDeLaSegunda - precioDeLaPrimera <= -30){
			return(segundaOpcion)
		}
		else {
			return(primeraOpcion)
		}
	}
}

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

