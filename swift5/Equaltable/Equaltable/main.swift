//
//  main.swift
//  Equaltable
//
//  Created by 侯森魁 on 2020/3/29.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

class Person: Equatable {
    var age:Int
    init(age:Int) {
        self.age = age
    }
    
    static func == (lhs: Person, rhs: Person) -> Bool {
        lhs.age == rhs.age
    }
}
var p1 = Person(age:10)
var p2 = Person(age: 10)
print(p1 == p2)

print("p1" == "p1")

/*
自定义运算符 什么的只是术，不关乎多态，和软件设计思想
 */
