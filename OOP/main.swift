//
//  main.swift
//  OOP
//
//  Created by Mustafa Karagöz on 7.10.2024.
//

import Foundation

class Ayak {
    
    var uzunluk : Float?
}


class Sandalye {
    
    var bacaksayisi: Int?
    var model : String?
    
    weak var a : Ayak? // a nesnesi üretilmedi sandalye1 ve sandalye2 deki gibi nesne üretmemiz gerekiyordu.
    
}

var sandalye1 = Sandalye()
sandalye1.bacaksayisi = 5

var sandalye2 = Sandalye()
sandalye2.bacaksayisi = 3
sandalye2.model = "Yuksek"
sandalye2.a?.uzunluk = 11.5

print(sandalye1)
print(sandalye2)

print(sandalye1.bacaksayisi)
print(sandalye2.bacaksayisi)
print(sandalye2.model)
print(sandalye2.a?.uzunluk) // a ya bir uzunluk atadık



class Kare {
    var kenarIc : Float = 0
    var cevreIc : Float = 0
    
    var kenar : Float {  // Encapsulation = Saklama, gizleme. Field'lar üzerinde yapılan işlemler
        get {  // değişken okuma
            return kenarIc
        }
        set(yeniKenar){ // değişken değiştirme
            if yeniKenar > 0 {
                kenarIc = yeniKenar
            }
            else{
                kenarIc = 0
            }
            cevreIc = kenarIc * 4
        }
    }
    
    var cevre : Float {
        
        get {
            return cevreIc
        }
    }
    func bilgileriGoster() {  // Functions
        print("Kenar Uzunluğu: \(kenarIc)\nÇevre Uzunluğu: \(cevreIc)")
    }
}

var kare = Kare()

kare.kenar = 10
print(kare.kenar)
print(kare.cevre)

var kare2 = Kare()

kare2.kenar = 20
kare2.bilgileriGoster() // kare2 nesnesiyle bilgileriGoster fonksiyonunu çağırdık.


// Fonksiyonların Parametre Alması

func f1 (p1 : String) {
    print(p1)
}

f1(p1 : "Hello")
f1(p1 : "World")


func f2(Ad p1 : String, _ p2 : String) {
    print(p1, p2)
}
f2(Ad: "Mustafa", "Karagöz")


// Fonksiyonların Geriye Değer Döndürmesi

func DegerGetir() -> String {
    return "Fonksiyon içi değer döndürüyor"
}

var gelenDeger = DegerGetir()

print(gelenDeger )

// Tuples ile geriye değer döndürme

func cokluDeger() -> (d1: String , d2: Int) {
    return ("", 23)
}
var cevap = cokluDeger()
print(cevap)

func Karsilastir(sayi1 : Int, sayi2: Int) -> (kucuk : Int, buyuk : Int) {
    if sayi1 < sayi2 {
        return (sayi1, sayi2)
    } else {
        return (sayi2, sayi1)
    }
}

// Functions Overloading

func Topla(sayi1 : Int, sayi2 : Int) {
    
    let toplam = sayi1 + sayi2
    
    print(toplam)
}

func Topla(sayi1: Int, sayi2: Int) -> Int {
    
    return sayi1 + sayi2
}

func Topla(sayi1: Int, sayi2: Int, sayi3: Int) -> Int {
    
    return sayi1 + sayi2 + sayi3
}

var a : Int = Topla(sayi1: 5, sayi2: 2)
print(a)

// Closure

func f1(c: ()->()){ // c local bir fonksiyondur. Sadece f1 içerisinden kullanılabilir. Dışardan kullanılamaz bir işlevdir. c parametre almıyor geriye de bir değer döndürmüyor f1 fonksiyonu c nin içeriğiyle ilgilenmiyor. İhtyiyacı olduğunda o işlevi tetiklemekle ilgileniyor.
    c()
}

f1(c: {
     print("İç") // Closure içi
})

func f3(sonucFonk: (_ p1:Int)->()){
    let d = 23
    sonucFonk(d)
}

f3(sonucFonk: {
    deger in
    print(deger)
})

// İki türlüde tanımlayabiliyoruz.

f3() {
    deger in
    print(deger)
}

// Fonksiyonların parametre alarak fonksiyon alması

func f1(p1:Int){
    print(p1)
}

func f2(fonk : (Int)->()){
    fonk(3)
}

f2(fonk: f1) // İhityacın ollduğunda f1 fonksiyonunu kullanabilirsin diyoruz.


func adminOzellikYukle() {
    print("admin özellikleri")
}

func kullaniciOzellikleriYukle() {
    print("kullanıcı")
}

func Yukle(ozellikYukle : () -> ()) { // Dışarıdan özellikyükle diye bir fonksiyon alıyor bu fonksiyon parametre almıyor ve geriye değer döndürmüyor.
    print("Verileri getir.")
    print("Temel ayarlamalar yap.")
    
    ozellikYukle() // Verdiğimiz kriterlere göre özellikleri yapsın
    
}

var kullaniciTipi = "K"

if kullaniciTipi == "A" {
    Yukle(ozellikYukle: adminOzellikYukle)
}
else {
    Yukle(ozellikYukle: kullaniciOzellikleriYukle)
}


// Fonksiyonların geriye fonksiyon döndürme

func s1() -> (Int) -> Float {
    func lf1 (d1 :Int) -> Float {
        return Float(d1)
    }
    return lf1
}

var fIc = s1()
fIc(4)


// Initialization --> init() = Bir nesnenin belleğe çıkartılması işlemidir.

class Dikdortgen {
    
    var kenarUzunlugu : Int
    
    init(ku : Int){
        kenarUzunlugu = ku
    }
    
}

var dikdortgen = Dikdortgen(ku: 25)
print(dikdortgen.kenarUzunlugu)

