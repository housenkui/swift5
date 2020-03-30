//
//  main.swift
//  Associated Type
//
//  Created by 侯森魁 on 2020/3/29.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
 关联类型的作用:给协议中用到的类型定义一个占位名称
 协议中可以拥有多个关联类型
 */
protocol Stackable {
    associatedtype Element //关联类型
    mutating func push (_ element:Element)
    mutating func pop()->Element
    func top() -> Element
    func size() -> Int
}
class StringStack: Stackable {
    //给关联类型设定真实类型
//    typealias Element = String
    var elements = [String]()
    func push(_ element:String) -> Void {
        elements.append(element)
    }
    func pop() ->String {
        elements.removeLast()
    }
    func top() -> String{
        elements.last!
    }
    func size()->Int{elements.count}
}


class StringStack1<E>: Stackable {
        
    //给关联类型设定真实类型
    var elements = [E]()
    func push(_ element:E) {
        elements.append(element)
    }
    func pop() ->E {
        elements.removeLast()
    }
    func top() -> E{
        elements.last!
    }
    func size()->Int{elements.count}
}
