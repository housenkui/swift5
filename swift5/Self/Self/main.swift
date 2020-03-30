//
//  main.swift
//  Self
//
//  Created by 侯森魁 on 2020/3/29.
//  Copyright © 2020 侯森魁. All rights reserved.
//


import Foundation

print("Hello, World!")

/*
 Self一般用作返回值类型，限定返回值跟方法调用者必须是同一类型(也可以作为参数类型) 类似于iOS的instanceType
 */

class Person1 {
    var age = 1
    static var count = 2
    func run() {
        print(self.age)
//        print(Self.count)
    }
}
protocol Runnable {
    func test() -> Self
}
class Person: Runnable {  //多态
    
    func test() ->Self {
        type(of: self).init()
    }
    required init() {}
}
class Student: Person {
    
}

var stu = Student()

print(stu.test())
