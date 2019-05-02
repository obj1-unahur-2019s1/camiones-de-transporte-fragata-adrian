object knightRider {
	method peso() { return 500 }
	method nivelPeligrosidad() { return 10 }
}

object bumblebee {
	var transformadoEnAuto = true
	
	method peso() { return 800 }
	method nivelPeligrosidad() { return if (transformadoEnAuto) { 15 } else { 30 }  }
	method transformar() { transformadoEnAuto = not transformadoEnAuto }
}

object paqueteDeLadrillos{
	var cantidadDeLadrillos
	
	method cantidadDeLadrillos() { return cantidadDeLadrillos }
	method cantidadDeLadrillos(cuantos){ cantidadDeLadrillos = cuantos }
	method peso() { return 2 }
	method nivelPeligrosidad() { return 2 }
}

object arenaAGranel {
	var peso
	
	method peso(kilos){ peso = kilos }
	method peso() { return peso }
	method nivelPeligrosidad() { return 1 }
}

object bateriaAntiaerea {
	var tieneMisiles = true
	
	method peso() { return if(tieneMisiles){ 300 } else { 200 } }
	method nivelPeligrosidad() { return if(tieneMisiles){ 100 } else { 0 } }
}
