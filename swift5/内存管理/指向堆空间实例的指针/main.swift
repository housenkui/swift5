//
//  main.swift
//  指向堆空间实例的指针
//
//  Created by 侯森魁 on 2020/3/30.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

class Person {
    var age = 10
    init(age:Int) {
        self.age = age
    }
}

var person = Person(age: 20)

var ptr = withUnsafeMutablePointer(to: &person){$0}

print(ptr)

//var ptr1 = withUnsafePointer(to: &age){$0}
//print(age)
//print(ptr1)
