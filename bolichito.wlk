import personas.*
import cosas.*

object bolichito {

 	var objetoEnVidriera = remera 
	var objetoEnMostrador = pelota

    method objetoEnVidriera() { return objetoEnVidriera }
	method objetoEnMostrador() { return objetoEnMostrador }

    method ponerEnVidriera(unObjeto) { objetoEnVidriera = unObjeto }
	method ponerEnMostrador(unObjeto) { objetoEnMostrador = unObjeto }

    method esBrillante() {
		return objetoEnVidriera.material().brilla() and objetoEnMostrador.material().brilla()
    }

    method esMonocromatico() {
		return objetoEnVidriera.color() == objetoEnMostrador.color()
    }

    method estaEquilibrado() {
		return objetoEnMostrador.peso() > objetoEnVidriera.peso()
    }

    method tieneAlgoExhibidoDe(colorBuscado) {
		return objetoEnVidriera.color() == colorBuscado or objetoEnMostrador.color() == colorBuscado
    }

    method puedeMejorar() {
		return not self.estaEquilibrado() or self.esMonocromatico()
	}

    method puedeOfrecerleAlgoA(persona) {
		// Le delegamos la pregunta a la persona misma
		return persona.leGusta(objetoEnVidriera) or persona.leGusta(objetoEnMostrador)
    }
 }