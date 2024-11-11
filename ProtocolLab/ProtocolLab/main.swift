//
//  main.swift
//  ProtocolLab
//
//  Created by Mustafa Karagöz on 4.11.2024.
//

import Foundation

// Çalışan görevleri olarak, Müdür, Müdür yardımcısı, Yazılımcı, Temizlik Görevlisi, gibi çalışanların bulunduğu bir iş yerinde çalışanların bilgilerinin tutulduğu yapı için Çalışan ve Yöneticilerin standartlarının belirlendiği yapının oluşturulması.

// Çalışanlar için sicilNo, Ad, Soyad zorunludur. Her bir çalışan izin kullanabilir.

// Yöneticiler çalışanın tüm özelliklilerini kapsamakla birlikte altında çalışanları kontrol etmek zorundadır.


protocol CalisanProtocol {
    
    var Ad : String { get set }
    var Soyad : String { get set }
    var SicilNo : Int { get set }
    
    func izinKullan()
}

protocol YoneticiProtocol : CalisanProtocol {
    
    func altCalisanKontrol()
}

class Calisan : CalisanProtocol {
    func izinKullan() {
    
    }
    
    var Ad : String
    var Soyad : String
    var SicilNo : Int
    
    init(Ad : String, Soyad : String, SicilNo : Int) {
        self.Ad = Ad
        self.Soyad = Soyad
        self.SicilNo = SicilNo
    }
}

class Mudur : YoneticiProtocol{
    func izinKullan() {
        
    }
    
    func altCalisanKontrol() {
        
    }
    
    var Ad : String
    var Soyad : String
    var SicilNo : Int
    
    init(Ad : String, Soyad : String, SicilNo : Int) {
        self.Ad = Ad
        self.Soyad = Soyad
        self.SicilNo = SicilNo
    }
}

