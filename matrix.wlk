object neo {
    var energia =100
    method esElElegido()= true           
    method vitalidad () = energia/10
    method saltar() {
        energia/2
     }
  
}

object morfeo {
    var vitalidad = 8
    var cansado = false
    method esElElegido() = false
    method vitalidad() = vitalidad        
      

      method saltar() {
        vitalidad =(vitalidad - 1).max(0)
        cansado =not cansado
        
      }
    
  
}


object trinity {

    method vitalidad() = 0 
    method saltar() {
        }
    method esElElegido() = false
    
  
}


object nave {
    const  pasajeros = [morfeo , trinity ]

    method cantidadPasajeros() = pasajeros.size()
    method pasajerosConMayorVitalidad()=pasajeros.max({p=>p.vitalidad()})
    method estaEquilibrada() =  pasajeros.fold(0, {p=>p.vitalidad() < self.pasajerosConMayorVitalidad()/2})
    method estaElElegido() =pasajeros.any({p=>p.esElElegido()}) 
    method chocar() {
        pasajeros.forEach({p=>p.saltar()})
        pasajeros.clear()
     }
     method pasajerosQueNoSonElegidos()= pasajeros.filter({p=>not p.esElElegido()})
     method acelerar(){
        self.pasajerosQueNoSonElegidos().forEach({p=>p.saltar()})

     }

}