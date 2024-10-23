//
//  main.swift
//  StaticLab
//
//  Created by Mustafa Karagöz on 22.10.2024.
//



import Foundation

class Personel {
    
    var Adi: String
    var SicilNo: Int
    static var sonPersonelNo = 0
    
    init(ad: String){
        Adi = ad
        SicilNo = Personel.SicilHesapla()
    }
    
    static func SicilHesapla()-> Int {
        
        sonPersonelNo+=1
        return sonPersonelNo
    }
    
    func bilgileriYaz() {
        print("Ad: \(Adi)")
        print("SicilNo: \(SicilNo)")
    }
}

var p1 = Personel(ad: "Mustafa")
p1.bilgileriYaz()

var p2 = Personel(ad: "Karagöz")
p2.bilgileriYaz()


