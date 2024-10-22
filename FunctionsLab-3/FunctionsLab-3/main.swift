//
//  main.swift
//  FunctionsLab-3
//
//  Created by Mustafa Karagöz on 21.10.2024.
//

import Foundation

func islemYap(islemTipi : String) -> (Float, Float) -> Float {
    
    func Topla(sayi1 : Float, sayi2 : Float) -> Float {
        return sayi1 + sayi2
    }
    func Cikar(sayi1 : Float, sayi2 : Float) -> Float {
        return sayi1 - sayi2
    }
    
    if islemTipi == "Topla" {
        return Topla
    }
    else {
        return Cikar
    }
}

var islemFonk = islemYap(islemTipi: "Topla")

var sonuc = islemFonk(4,6)
var sonuc2 = islemFonk(7,8)

print(sonuc, sonuc2)

islemFonk = islemYap(islemTipi: "Cikar")

sonuc = islemFonk(4,6)
sonuc2 = islemFonk(7,8)

print(sonuc, sonuc2)
