// Colores
object rojo {
	method esFuerte() { return true }
}
object celeste {
	method esFuerte() { return false }
}
object verde {
	method esFuerte() { return true }
}
object naranja {
	method esFuerte() { return true }
}
object pardo {
	method esFuerte() { return false }
}

// Materiales
object cobre {
	method brilla() { return true }
}
object vidrio {
	method brilla() { return true }
}
object cuero {
	method brilla() { return false }
}
object madera {
	method brilla() { return false }
}
object lino {
	method brilla() { return false }
}

object remera{
    method color() { return rojo }

    method material() { return lino }   

    method peso() { return 800 }
}

object pelota{

    method material() { return cuero }   

    method peso() { return 1300 }
}

object bibloteca{
    method color() { return verde }

    method material() { return madera }   

    method peso() { return 8000 }
}

object munieco{
    var peso = 0 

    method peso() { return peso }

    method cambiarPeso(nuevoPeso) { peso = nuevoPeso }

    method color() { return celeste }

    method material() { return vidrio }   

    
}

object placa{
    var color = rojo
    var peso = 0 

    method peso() { return peso }

    method cambiarPeso(nuevoPeso) { peso = nuevoPeso }

    method color() { return color }

    method cambiarColor(nuevoColor) { color = nuevoColor }

    method material() { return cobre }   

}

object arito{
    method color() { return celeste }

    method material() { return cobre }   

    method peso() { return 180 }
}

object banquito{

    var color = naranja

    method color() { return color }

    method cambiarColor(nuevoColor) { color = nuevoColor }

    method material() { return madera }   

    method peso() { return 1700 }
}

object cajita{

    var objetoAdentro = banquito

    method color() { return rojo }

    method material() { return cobre }   

    method peso() { return 400 + objetoAdentro.peso() }

    method guardarAdentro(nuevoObjeto) { 
		objetoAdentro = nuevoObjeto 
	}
}

