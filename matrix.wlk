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