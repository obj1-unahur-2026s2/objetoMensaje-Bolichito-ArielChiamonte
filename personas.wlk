import cosas.*

object rosa {
    method leGusta(cosa) = cosa.peso() <= 2000
}

object estefy {
    method leGusta(cosa) = cosa.esDeColorFuerte()
}
object luisa {
    method leGustaAlgo(cosa) = cosa.esDeUnMaterialQueBrilla()
}
object juan {
    method leGustaAlgo(cosa) = cosa.peso() >=1200 and cosa.peso() <= 1800
    or cosa.esDeColorFuerte()
}
