//
//  main.swift
//  ClassLab
//
//  Created by Mustafa Karagöz on 21.10.2024.
//

import Foundation


// Ad, İkinciAd, Soyad, KimlikNo, SicilNo, Bilgileri bulunan bir personel listesi oluşturup, Listeye eklenen personellerin bilgilerini ekrana yazdıran uygulama

class Personel {
    var Ad : String
    var IkinciAd : String?
    var Soyad : String
    let KimlikNo : Int
    let SicilNo : Int
    
    init(Ad : String, IkinciAd : String? = nil, Soyad : String, KimlikNo : Int, SicilNo : Int) {
        self.Ad = Ad
        self.IkinciAd = IkinciAd
        self.Soyad = Soyad
        self.KimlikNo = KimlikNo
        self.SicilNo = SicilNo
    }
    
    func bilgiGoster() {
        print("Ad: \(Ad)\nIkinci Ad: \(IkinciAd)\nSoyad: \(Soyad)\nKimlik No: \(KimlikNo)\nSicil No: \(SicilNo)\n")
    }
}

var personelListesi = [Personel]()
var personel = Personel(Ad: "Halit", IkinciAd: "Mustafa", Soyad: "Karagöz", KimlikNo: 31242134, SicilNo: 2131)
personelListesi.append(personel)

personel = Personel(Ad: "Tuba", Soyad: "Kızmaz", KimlikNo: 45234652, SicilNo: 85697)
personelListesi.append(personel)

for p in personelListesi {
    p.bilgiGoster()
}


