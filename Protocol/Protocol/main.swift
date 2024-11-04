//
//  main.swift
//  Protocol
//
//  Created by Mustafa Karagöz on 4.11.2024.
//

import Foundation


protocol A{
    var d1 : Int { get set}
    
    func f1()
    
    init(s:String)
}

protocol B {
    func f2()
}

class C : A, B{
    required init(s:String) {
        d1 = 0
    }
    var d1 : Int
    
    func f1() {
        print("f1")
    }
    
    func f2() {
        print("f2")
    }
    
    init() {
        d1 = 0
    }

}

var a = C()
a.f1()
a.f2()

