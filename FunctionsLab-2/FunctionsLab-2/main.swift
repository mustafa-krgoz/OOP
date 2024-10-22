//
//  main.swift
//  FunctionsLab-2
//
//  Created by Mustafa Karagöz on 15.10.2024.
//

import Foundation

// Elimizde bulunan puan listesine göre bu listedeki en düşük puanın, en yüksek puanın ve toplam puanların değerlerini hesaplatıp kullanıcıya gösterelim.

func puanListesi (puanlar : [Int]) -> (enDusukPuan : Int , enYuksekPuan : Int , toplamPuan : Int) {
    
    var enDusukPuan = puanlar[0]
    var enYuksekPuan = puanlar[0]
    var toplamPuan = 0
    
    for puan in puanlar {
        if puan < enDusukPuan {
            enDusukPuan = puan
        }
        else if puan > enYuksekPuan {
            enYuksekPuan = puan
        }
        toplamPuan += puan
    }
    
    return (enDusukPuan, enYuksekPuan, toplamPuan)
}

let sonuc = puanListesi(puanlar: [7, 81, 832, 56, 92, -1, 0, 5, 6, 345])

print("En düşük puan: \(sonuc.enDusukPuan)")
print("En yüksek puan: \(sonuc.enYuksekPuan)")
print("Toplam puan: \(sonuc.toplamPuan)")
