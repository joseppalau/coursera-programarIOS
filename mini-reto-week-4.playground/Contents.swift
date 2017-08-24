//: Playground - noun: a place where people can play

import UIKit

enum Velocidades: Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init() {
        self = .Apagado
    }
}


class Auto {
    
    var velocidadInicial = Velocidades()
    var velocidadAnterior: Velocidades?
    var valorVelocidad = 0
    var estadoAuto = ""
    
    init(velocidad: Velocidades) {
        self.velocidadInicial = velocidad
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena:String) {
        
        if velocidadInicial == .Apagado {
            valorVelocidad = velocidadInicial.rawValue
            estadoAuto = "Apagado"
            velocidadInicial = .VelocidadBaja
            velocidadAnterior = .Apagado
            
        }
            
        else if velocidadInicial == .VelocidadBaja {
            
            if velocidadAnterior == .VelocidadMedia {
                valorVelocidad = velocidadInicial.rawValue
                estadoAuto = "Velocidad Baja"
                velocidadInicial = .Apagado
                velocidadAnterior = .VelocidadBaja
            }
                
            else {
                valorVelocidad = velocidadInicial.rawValue
                estadoAuto = "Velocidad Baja"
                velocidadInicial = .VelocidadMedia
                velocidadAnterior = .VelocidadBaja
            }
        }
            
        else if velocidadInicial == .VelocidadMedia  {
            
            if  velocidadAnterior == .VelocidadAlta {
                valorVelocidad = velocidadInicial.rawValue
                estadoAuto = "Velocidad Media"
                velocidadInicial = .VelocidadBaja
                velocidadAnterior = .VelocidadMedia
            }
                
            else {
                valorVelocidad = velocidadInicial.rawValue
                estadoAuto = "Velocidad Media"
                velocidadInicial = .VelocidadAlta
                velocidadAnterior = .VelocidadMedia
            }
            
        }
            
        else if velocidadInicial == .VelocidadAlta {
            valorVelocidad = velocidadInicial.rawValue
            estadoAuto = "Velocidad Alta"
            velocidadInicial = .VelocidadMedia
            velocidadAnterior = .VelocidadAlta
        }
        
        let tuplaAuto = (valorVelocidad, estadoAuto)
        return tuplaAuto
    }
    
}

var auto = Auto(velocidad: .init())

var estadoAuto = auto.cambioDeVelocidad()

    for i in 0...19 {

        estadoAuto = auto.cambioDeVelocidad()
        print("\(estadoAuto.actual) km/h, \(estadoAuto.velocidadEnCadena)")
        
}



