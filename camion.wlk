
import cosas.*
object camion{
    const peso = 1000
    const cosasCargadas=[robot,auto]
   
    method cargar(unaCosa){
        cosasCargadas.add(unaCosa)
    }
    method descargar(unaCosa){
        cosasCargadas.remove(unaCosa)
    }
    method peso() = peso + cosasCargadas.sum({c=> c.peso()})
    method pesosSonPares() = cosasCargadas.all({c=> c.peso().even()})
    method hayAlguna(unPeso) = cosasCargadas.any({c=> c.peso() == unPeso})
    method primerCosaPeligrosa(nivelPeligroso) = cosasCargadas.findOrDefault ({c=> c.nivelDePeligrosidad() >= nivelPeligroso}, "ninguno")
    method cosasPeligrosas(nivelPeligroso) = cosasCargadas.filter({c=> c.nivelDePeligrosidad() >= nivelPeligroso})
    method hayAlgunaEntre(valorMin,valorMax){
        return cosasCargadas.any({c=>c.peso().between(valorMin, valorMax)})
    }
    method laCosaMasPesada() = cosasCargadas.max({c=>c.peso()})
}  





object knigthRider{
    const peso = 500
    const nivelDePeligrosidad = 10
    method peso()= peso
    method nivelDePeligrosidad()= nivelDePeligrosidad

}

object bumbleBee{
    const peso = 800
    var nivelDePeligrosidad = 15
    method peso()= peso
    method nivelDePeligrosidad()= nivelDePeligrosidad
    method nivelDePeligrosidad(unaTransformacion){
        nivelDePeligrosidad = unaTransformacion.nivelDePeligrosidad()
    }

}



