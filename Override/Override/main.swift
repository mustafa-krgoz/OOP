//
//  main.swift
//  Override
//
//  Created by Mustafa Karagöz on 4.11.2024.
//

import Foundation


class AnaSinif {
    var D1 : Int
    
    init (d1: Int) {
        D1 = d1
    }
    func f1() {
        print("Ana sinif")
    }
}

class AltSinif : AnaSinif {
    var D2 : Int
    
    init (d1: Int, d2: Int) {
        D2 = d2
        super.init(d1: d1)
    }
    override func f1() { // Ana sınıftaki f1'i geçersiz kılarız.
        super.f1() //Super ile ana sınıftaki f1'i de yazdırmış oluruz.
        print("Alt sinif")
    }
}


var a  = AltSinif(d1: 10, d2:20 )
a.f1()

