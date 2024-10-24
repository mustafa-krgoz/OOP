//
//  main.swift
//  KalitimLab
//
//  Created by Mustafa Karagöz on 24.10.2024.
//

import Foundation

// Çalışan görevleri olarak Müdür, Müdür Yardımcısı, Yazılımcı, Temizlik Görevlisi gibi çalışanların bulunduğu bir iş yerinde çalışanların bilgilerinin tuttulduğu yapının modellenmesi


class Calisan {
    
    var SicilNo : Int
    var Ad : String
    var Soyad : String
    
    init(SicilNo: Int, Ad: String, Soyad: String) {
        self.SicilNo = SicilNo
        self.Ad = Ad
        self.Soyad = Soyad
    }
    
}

class Yazilimci : Calisan {
    var ProjeAdi : String?
    var ePosta : String?
}

class TemizlikGorevlisi : Calisan {
    
    var GorevAlani : String?
}

class Yonetici : Calisan {
    var EkipListesi = [Calisan]()
}

class MudurYardimcisi : Yonetici {
    var sorumlulukDepartmanAdi : String?
}

class Mudur : Yonetici {
    var Mudurluk : String?
}

var a = Yazilimci(SicilNo: 1, Ad: "Mustafa", Soyad: "Karagöz")
print(a.Ad)
