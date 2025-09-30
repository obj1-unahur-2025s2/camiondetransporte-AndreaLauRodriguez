
import cosas.*
object camion{
    const peso = 1000
    const cosasCargadas=[]
  
    method cargar(unaCosa){
        cosasCargadas.add(unaCosa)
        unaCosa.transformacionAlSerCargada()
    }
    method descargar(unaCosa){
        cosasCargadas.remove(unaCosa)
    }
    method peso() = peso + cosasCargadas.sum({c=> c.peso()})
    method pesosSonPares() = cosasCargadas.all({c=> c.peso().even()})
    method hayAlguna(unPeso) = cosasCargadas.any({c=> c.peso() == unPeso})
    
    
    method cosasPeligrosas(nivelPeligroso) = cosasCargadas.filter({c=> c.nivelDePeligrosidad() >= nivelPeligroso})
   
   method primerCosaPeligrosa(nivelPeligroso) {
      if  (self.cosasPeligrosas(nivelPeligroso).size() >0)
       return cosasCargadas.find({c=> c.nivelDePeligrosidad() >= nivelPeligroso})  
      else return nada  
    } 
   
   
    method hayAlgunaEntre(valorMin,valorMax){
        return cosasCargadas.any({c=>c.peso().between(valorMin, valorMax)})
    }
    method laCosaMasPesada() = cosasCargadas.max({c=>c.peso()})
    method estaExcedido() = cosasCargadas.sum({c =>c.peso()}) > 2500
    method ningunoSuperaPeligrosidad(nivel){
        return self.cosasPeligrosas(nivel).isEmpty()
    }
    method puedeCircular(unNivelPeligrosidad)= (not self.estaExcedido()) and self.ningunoSuperaPeligrosidad(unNivelPeligrosidad)

    
}  

object nada{
  method transformacionAlSerCargada(){

   }
}



object knigthRider{
    const peso = 500
    const nivelDePeligrosidad = 10
    method peso()= peso
    method nivelDePeligrosidad()= nivelDePeligrosidad
    method cantidadBultos(){
        return (1)
       
   }
   method transformacionAlSerCargada(){

   }
}

object bumbleBee{
    const peso = 800
    var transformacion = robot
    method peso()= peso
    method transformacion()= transformacion
    method transformacion(unaTransformacion){
        transformacion = unaTransformacion
    }
    method nivelDePeligrosidad(){
        return transformacion.nivelDePeligrosidad()
    }
    method cantidadBultos(){  
        return (2)
       
   }

   method transformacionAlSerCargada(){
     self.transformacion(robot)
   }
}



