import cosas.*

class Camion {
	const property cosas = []
	const tara = 1000
	const pesoMaximo = 2500
	
	method cargar(unaCosa) {
		cosas.add(unaCosa)
	}
	
	method descargar(unaCosa) {
		cosas.remove(unaCosa)
	}
	
	method pesoTotal() {
		return cosas.sum({n => n.peso()}) + tara
	}
	
	method excedidoDePeso() {
		return self.pesoTotal() > pesoMaximo
	}
	
	method objetosPeligrosos(nivel) {
		return cosas.filter({ cosa => 
			cosa.nivelPeligrosidad() > nivel
		})
	}
	
	method objetoMasPeligrosoQue(cosa) {
		return self.objetosPeligrosos(cosa.nivelPeligrosidad())
	}
	
	method puedeCircularEnRuta(nivelMaximoPeligrosidad){
		return cosas.all({cosa => 
			 cosa.nivelPeligrosidad() < nivelMaximoPeligrosidad
		})
	}
	
	method tieneAlgoQuePesaEntre(min, max){
		return cosas.any({cosa => 
			cosa.peso() >= min and cosa.peso() <= max
		})
	}
	
	method cosaMasPesada(){
		return cosas.max({cosa =>
			cosa.peso()
		})
	}
// cambios 7/05
}
