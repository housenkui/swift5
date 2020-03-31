//
//  main.swift
//  模式
//
//  Created by 侯森魁 on 2020/3/30.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
 什么是模式?
 模式是用于匹配的规则，比如switch的case、捕捉错误的catch/if/guard/while/for语句的条件等
 */

/*
 通配符模式
 _ 匹配任何值
 _? 匹配非nil值
 */
enum Life {
    case human(name:String,age:Int?)
    case animal(name:String,age:Int?)
}
func check(_ life:Life) {
    switch life{
    case .human(let name, _):
        print("human",name)
    case .animal(let name,_?):
        print("animal",name)
    default:
        print("other")
    }
}
check(.human(name: "Rose", age: 20))
check(.human(name: "Jack", age: nil))
check(.animal(name: "Dog", age: 5))
check(.animal(name: "Cat", age: nil))


var num:Int? = 10
switch num {
case let v?:
    print(v)
case nil:
    print("nil")
}

//值绑定模式
let points = [(0,0),(1,0),(2,0)]

for(x,_) in points {
    print(x)
}
