//
//  main.swift
//  FunctionsLab
//
//  Created by Mustafa Karagöz on 9.10.2024.
//

import Foundation

// Mevcuttaki listede bulunan en küçük elemanı, en büyük elemanı ve ortalama değeri ekrana yazdırma

var sayilar : [Int] = [1, 15, 38, 282, 65, 11, -2]

func enKucukEleman() {
    var enKucuk : Int = sayilar[0]
    
    for sayi in sayilar {
        if sayi < enKucuk {
            enKucuk = sayi
        }
    }
    
    print("En küçük eleman: \(enKucuk)")
}

func enBuyukEleman() {
    var enBuyuk : Int = 0
    
    for sayi in sayilar {
        if sayi > enBuyuk {
            enBuyuk = sayi
        }
    }
    
    print("En büyük eleman: \(enBuyuk)")
}

func ortalama() {
    
    let ort = sayilar.reduce(0){$0 + $1} / Int(sayilar.count)
    print("Ortalama: \(ort)")
}

func Yazdir() {
    enKucukEleman()
    enBuyukEleman()
    ortalama()
}

Yazdir()


