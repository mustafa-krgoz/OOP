//
//  main.swift
//  StructLab
//
//  Created by Mustafa Karagöz on 22.10.2024.
//

import Foundation

// Kare, dikdörtgen ve daire şekillerini structlar kullanarak modelleyip kullanmak


struct Kare {
    var kenar: Float
    //var cevre : Float
    //var alan: Float
    var ortak : Ortak
}

struct Dikdörtgen {
    
    var kisaKenar: Float
    var uzunKenar: Float
    //var cevre: Float
    //var alan: Float
    var ortak: Ortak
}

struct Daire {
    
    var yaricap: Float
    //var cevre: Float
    //var alan: Float
    var ortak: Ortak
}

struct Ortak {
    var cevre: Float
    var alan: Float
}

var k = Kare(kenar: 8, ortak: Ortak(cevre: 32, alan: 64))
var d = Dikdörtgen(kisaKenar: 4, uzunKenar: 6, ortak: Ortak(cevre: 20, alan: 32))
// pi=3
var d1 = Daire(yaricap: 5, ortak: Ortak(cevre: 15, alan: 75))

print(k.kenar)
print(d.uzunKenar)
print(d1.ortak.alan)


