//
//  main.swift
//  HataYonetimi
//
//  Created by Mustafa Karagöz on 11.11.2024.
//

import Foundation

enum HataKodlari : Int, Error {
    case h1 = 10
    case h2 = 11
    case h3 = 12
}

func HataKontrol() throws -> String {
    
    throw HataKodlari.h1
    return ""
}


do {
    var s = try? HataKontrol()
}
catch {
    print(error.localizedDescription)
}

