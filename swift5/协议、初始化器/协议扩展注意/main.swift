//
//  main.swift
//  协议扩展注意
//
//  Created by 侯森魁 on 2020/3/29.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

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
   func test1() -> Void {
          print("TestClass test1")
      }
      func test2() -> Void {
          print("TestClass test2")
      }
}

var cls :TestProtocol = TestClass()

cls.test1()
cls.test2()
TestClass.test3()


class Stack1 <E>{
    var elements = [E]()
    
    init(firstElement:E) {
        elements.append(firstElement)
    }
    func push(_ element:E) {
        elements.append(element)
    }
    func pop() -> E {
        elements.removeLast()
    }
    func top() -> E {
        elements.last!
    }
    func size() -> Int {
        elements.count
    }
}
//扩展中依然可以使用原类型中的泛型类型
extension Stack1 {
    func top1() -> E {
        elements.last!
    }
}

//符合条件才扩展
extension Stack1: Equatable where E :Equatable {
    static func == (left: Stack1, right: Stack1) -> Bool {
        left.elements == right.elements
    }
}
