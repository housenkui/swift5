//
//  main.swift
//  协议的继承
//
//  Created by 侯森魁 on 2020/3/28.
//  Copyright © 2020 侯森魁. All rights reserved.
//

protocol Runnable {
    func run()
}

protocol Livable:Runnable {
    func breath()
}

class Person: Livable {
    func run() {
            
    }
    func breath() {
        
    }
}

//接受Person或者其子类的实例
func fn0(obj:Person) -> Void {
    
}

//接收遵守Livable协议的实例
func fn0(obj:Livable) -> Void {
    
}

//接收遵守Livable和Runnable 协议的实例  协议组合
func fn1(obj: Livable & Runnable) -> Void {
    
}

//接收遵守Livable和Runnable 协议的实例，并且是Person或者其子类的实例
func fn2(obj: Livable & Runnable) -> Void {
    
}
