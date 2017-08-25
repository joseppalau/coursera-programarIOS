//: Playground - Mini Reto Week 4

import UIKit

enum Velocidades: Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades) {
        self = velocidadInicial
    }
}


class Auto {
    
    var velocidad: Velocidades
    
    init() {
        
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
        
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena:String) {
        
        var valorVelocidad : Int = 0
        var estadoAuto : String = ""
        
        
        if  velocidad == .Apagado {
            
            valorVelocidad = velocidad.rawValue
            estadoAuto = "Apagado"
            velocidad = .VelocidadBaja
            
        }
            
        else if velocidad == .VelocidadBaja {
            
            valorVelocidad = velocidad.rawValue
            estadoAuto = "Velocidad Baja"
            velocidad = .VelocidadMedia
        }
            
        else if velocidad == .VelocidadMedia  {
            
            valorVelocidad = velocidad.rawValue
            estadoAuto = "Velocidad Media"
            velocidad = .VelocidadAlta
            
        }
            
        else if velocidad == .VelocidadAlta {
            
            valorVelocidad = velocidad.rawValue
            estadoAuto = "Velocidad Alta"
            velocidad = .VelocidadMedia
            
        }
        
        let tuplaAuto = (valorVelocidad, estadoAuto)
        return (tuplaAuto)
        
    }
    
}

var auto = Auto()

for i in 0...19 {
    
    let estadoAuto = auto.cambioDeVelocidad()
    print("\(estadoAuto.actual) km/h, \(estadoAuto.velocidadEnCadena)")
    
}
