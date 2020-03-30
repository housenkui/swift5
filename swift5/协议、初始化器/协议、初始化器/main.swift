//
//  main.swift
//  协议、初始化器
//
//  Created by 侯森魁 on 2020/3/29.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation
import WebKit
print("Hello, World!")

class Person {
    var age:Int
    var name:String
    init(age:Int,name:String) {
        self.age = age
        self.name = name
    }
}
extension Person : Equatable {
    
    static func == (left: Person, right: Person) -> Bool {
        left.age == right.age && left.name == right.name
    }
    
    convenience init(){
        self.init(age:0,name:"")
    }
}

/*
 需求、判断一个整型是不是奇数 不能被2整除
 */
/*
 扩展基础库 漂亮 通过扩展原有协议，在原有协议的基础上增加方法
 */
extension BinaryInteger {
    func idOdd() -> Bool {
        self % 2 != 0
    }
}
print(10.idOdd())
print((-3).idOdd())


protocol TestProtocol {
    func test1()
}

extension TestProtocol {
    func test1() -> Void {
        print("TestProtocol test1")
    }
    func test2() -> Void {
        print("TestProtocol test2")
    }
    static func test3 () {
        print(3333)
    }
}

class TestClass : TestProtocol {
   
}

var cls = TestClass()

cls.test1()
cls.test2()
TestClass.test3()


