//
//  main.swift
//  可选项本质
//
//  Created by 侯森魁 on 2020/3/29.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
 可选项的本质是enum类型
 */
//public enum Optional<Wrapped>:ExpressibleByNilLiteral{
//    case none
//    case some(Wrapped)
//    public init(_ some:Wrapped)
//}
var age:Int? = 10
var age1:Optional<Int> = Optional<Int>.some(10)
var age2:Optional = .some(10)
var age3 = Optional(10)//这四行代码等价


var age4:Int? = nil
var age5 = Optional<Int>.none//等价于上一行
var age6:Optional<Int> = .none//等价于上一行
switch age {
case let .some(v):
    print("1",v)
case .none:
    print("2")
}
