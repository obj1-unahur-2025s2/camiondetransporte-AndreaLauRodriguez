
object paqueteLadrillos{
    var cantidadLadrillos = 0
    method peso()= cantidadLadrillos* 2
    method nivelDePeligrosidad()= 2
    method agregarLadrillos(unaCantidad) {
        cantidadLadrillos = cantidadLadrillos + unaCantidad
      
    }
    method sacarLadrillos(unaCantidad) {
        cantidadLadrillos = cantidadLadrillos - unaCantidad
      
    }
   
   method cantidadBultos(){
       
        return ((self.peso()* 0.5/200).truncate(0)+1).min(3)
       
   }
   method transformacionAlSerCargada(){
    self.agregarLadrillos(12)
   }
}


 /*  

contenedor portuario: hace que reaccione cada una de las
 cosas que tiene adentro;

  */




object arenaAGranel{
    var peso = 0 
    method nivelDePeligrosidad()=1
    method peso()= peso
    method agregarPeso(unPeso) {
        peso = peso + unPeso
    } 
    method cantidadBultos(){
       
        return (1)
       
   }
   method perderPeso(unPeso){
     peso = 0.max(peso - unPeso)
   }
   method transformacionAlSerCargada(){
    self.perderPeso(10)
   }
}

object bateriaAntiaerea{
    var peso = 300
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
     method cantidadBultos(){
       
        return ((self.peso()/100)-1)
       
   }
   method transformacionAlSerCargada(){
    self.cargarMisiles()
   }
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
    method agregarCosas(unaCosa){
      cosasContenidas.add(unaCosa)
    }
    method cantidadBultos(){
       
        return (1+ cosasContenidas.sum({c=>c.cantidadBultos()}))
       
   }
   method transformacionAlSerCargada(){
    cosasContenidas.forEach({c=>c.transformacionAlSerCargada()})
   }
}
object residuosRadiactivos{
   const nivelDePeligrosidad = 200
   var peso = 10
   method nivelDePeligrosidad() = nivelDePeligrosidad
   method peso() = peso
   method agregarPeso(unPeso) {
     peso = peso + unPeso
   }
    method cantidadBultos(){
       
        return (1)
       
   } 
   method transformacionAlSerCargada(){
    self.agregarPeso(15)
   }
   }

object embalajeDeSeguridad {
  var cosaAdentro = robot

  method cosaAdentro() = cosaAdentro
  method ponerCosa(unaCosa) {
    cosaAdentro = unaCosa
  }
  method peso() = self.cosaAdentro().peso()
  method nivelDePeligrosidad() = cosaAdentro.nivelDePeligrosidad() * 0.5
  method cantidadBultos(){
       
        return (2)
       
   }
   method transformacionAlSerCargada(){
    
   }
}

object auto{
   const nivelDePeligrosidad = 15
   const peso = 10
   method nivelDePeligrosidad() = nivelDePeligrosidad
   method peso() = peso
    method cantidadBultos(){
       
        return (0)
       
   } 
   method transformacionAlSerCargada(){
    
   }
   }


object robot{
    const nivelDePeligrosidad = 30
    const peso = 5
   method nivelDePeligrosidad() = nivelDePeligrosidad
   method peso() = peso
   method cantidadBultos(){
       
        return (0)
       
   }
   method transformacionAlSerCargada(){
    
   }
}

