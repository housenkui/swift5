//
//  main.swift
//  泛型类型
//
//  Created by 侯森魁 on 2020/3/29.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")
class Stack <E>{
    var elements = [E]()
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

var intStack = Stack<Int>()



var stringStack = Stack<String>()

var anyStack = Stack<Any>()


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
var stack = Stack1(firstElement: 10)
print(stack.elements)

class SubStack<E>: Stack<E> {
    
}

struct Stack2<E> {
    var elements = [E]()
    mutating func push(_ element:E){elements.append(element)}
    mutating func pop()->E {elements.removeLast()}
}

enum Score {
    case point(Int)
    case grade(String)
}

let score3 = Score.grade("A")
