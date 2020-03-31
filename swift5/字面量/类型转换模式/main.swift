//
//  main.swift
//  类型转换模式
//
//  Created by 侯森魁 on 2020/3/31.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

class Animal {
    func eat() {
        print(type(of: self),"eat")
    }
}
class Dog: Animal {
    func run() -> Void {
        print(type(of: self),"run")
    }
}
class Cat: Animal {
    func jump(){
        print(type(of: self),"jump")
    }
}

func check(_ animal:Animal) {
    switch animal {
    case let dog as Dog:
        dog.eat()
        dog.run()
    case is Cat:
        animal.eat()
        (animal as? Cat)?.jump()
    default:
        break
    }
}
check(Dog())
check(Cat())
