//
//  main.swift
//  Kalitim
//
//  Created by Mustafa Karagöz on 23.10.2024.
//

import Foundation

class Kare : Sekil {
    
    var kenar : Int
    
    init(kenar : Int) {
        self.kenar = kenar
        super.init(ks : 4)
    }
    
    func Hesapla() {
        cevre = 4 * kenar
    }

}

class Dikdortgen : Sekil {
    
    var kisaKenar : Int
    var uzunKenar : Int
    
    init(k: Int , u: Int){
        kisaKenar = k
        uzunKenar = u
        super.init()
    }

}

class Sekil {
    
    var kenarSayisi : Int?
    var cevre : Int?
    var alan : Int?
    
    init(){
        
    }
    init(ks : Int){
        kenarSayisi = ks
    }
}

var c = Kare(kenar: 5)
c.Hesapla()
print(c.cevre!)
print(c.kenarSayisi!)

var d = Dikdortgen(k: 10, u: 20)
print(d.kenarSayisi)




