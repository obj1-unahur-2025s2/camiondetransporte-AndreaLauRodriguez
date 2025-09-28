
object paqueteLadrillos{
    var cantidadLadrillos = 1
    const nivelDePeligrosidad = 2
    method peso()= cantidadLadrillos* 2
    method nivelDePeligrosidad()= nivelDePeligrosidad
    method agregarLadrillos(unaCantidad) {
        cantidadLadrillos = cantidadLadrillos + unaCantidad
      
    }
    method sacarLadrillos(unaCantidad) {
        cantidadLadrillos = cantidadLadrillos - unaCantidad
      
    }

}

object arenaAGranel{
    var peso = 0 
    method nivelDePeligrosidad()=1
    method peso()= peso
    method peso(unPeso) {
        peso = peso + unPeso
    } 
}

object bateriaAntiaerea{
    var peso = 200
    var nivelDePeligrosidad = 100
    
    method peso() = peso
    method cargarMisiles(){
        peso = 300
        nivelDePeligrosidad = 100
    }
    method tirarMisiles(){
        peso = 200
        nivelDePeligrosidad = 0
    }
    method nivelDePeligrosidad() = nivelDePeligrosidad
}

object contenedorPortuario{
    const peso = 100
    const cosasContenidas = []
    method peso() = peso + cosasContenidas.sum({c => c.peso()})
    method peligrosidad() {
      if (cosasContenidas.isEmpty()){
        return 0
      }
      else{
        return cosasContenidas.max({c=>c.nivelDePeligrosidad()}).nivelDePeligrosidad()
      }
    }
    
}
object residuosRadiactivos{
   const nivelDePeligrosidad = 200
   var peso = 10
   method nivelDePeligrosidad() = nivelDePeligrosidad
   method peso() = peso
   method cambiarPeso(unPeso) {
     peso = peso + unPeso
   }
     
   }

object embalajeDeSeguridad {
  var cosaAdentro = robot

  method cosaAdentro() = cosaAdentro
  method cambiaCosa(unaCosa) {
    cosaAdentro = unaCosa
  }
  method peso() = self.cosaAdentro().peso()
  method nivelDePeligrosidad() = cosaAdentro.nivelDePeligrosidad() * 0.5
}

object auto{
   const nivelDePeligrosidad = 15
   const peso = 10
   method nivelDePeligrosidad() = nivelDePeligrosidad
   method peso() = peso
     
   }


object robot{
    const nivelDePeligrosidad = 30
    const peso = 5
   method nivelDePeligrosidad() = nivelDePeligrosidad
   method peso() = peso
}

