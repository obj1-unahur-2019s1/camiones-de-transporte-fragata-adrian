import cosas.*

object camion {
	const property cosas = []
	
	method cargar(unaCosa) {
		cosas.add(unaCosa)
	}
	
	method descargar(unaCosa) {
		cosas.remove(unaCosa)
	}
	
	method pesoTotal() {
		return cosas.sum({n => n.peso()}) + 1000
	}
	
	method excedidoDePeso() {
		return self.pesoTotal() > 2500
	}
	
	method objetosPeligrosos(nivel) {
		return cosas.filter({ cosa => 
			cosa.nivelPeligrosidad() > nivel
		})
	}
	
	method objetoMasPeligrosoQue(cosa) {
		return cosas.filter({c =>
			c.nivelPeligrosidad() > cosa.nivelPeligrosidad()
		})
	}
	
	method puedeCircularEnRuta(nivelMaximoPeligrosidad){
		cosas.
	}
	
}
