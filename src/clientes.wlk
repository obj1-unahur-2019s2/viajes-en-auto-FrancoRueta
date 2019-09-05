  //CLIENTES//
 
 object ludmila{
 	method precioPorKilometro(){
 		return(18)
 	}
 }
  
 object anaMaria{
 	var estaBienEconomicamente = true
 	
 	
 	method precioPorKilometro(){
 		if (estaBienEconomicamente){
 			return(30)
 		}
 		else {
 			return(25)
 		}
 	}
 	method estaAnaEstable(){
 		return(estaBienEconomicamente)
 	}
 	
 }
 
 object teresa{
 	var precioPorKm = 22
 	
 	method precioPorKilometro(){
 		return(precioPorKm)
 	} 
 	method cambiaElPrecio(nuevoValor){
 		precioPorKm = nuevoValor
 	}
 }
 
 object melina{
 	var miAmo
 	
 	method miNuevoAmo(nuevoAmo){
 		miAmo = nuevoAmo
 	}
 	
 	method precioPorKilometro(){
 		return(miAmo.precioPorKilometro() - 3)
 	}
 }
 
 
