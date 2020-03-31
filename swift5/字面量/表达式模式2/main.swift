//
//  main.swift
//  表达式模式2
//
//  Created by 侯森魁 on 2020/3/31.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")
prefix operator ~>
prefix operator ~>=
prefix operator ~<
prefix operator ~<=
prefix func ~> (_ i:Int)->((Int)->Bool){{$0 > i }}
prefix func ~>= (_ i:Int)->((Int)->Bool){{$0 >= i }}
prefix func ~< (_ i:Int)->((Int)->Bool){{$0 < i }}
prefix func ~<= (_ i:Int)->((Int)->Bool){{$0 <= i }}


extension Int {
    static func ~= (pattern:(Int)->Bool,value:Int)->Bool {
        pattern(value)
    }
}
var age = 19
switch age {
case ~>=0,~<=10:
    print("1")
case ~>10,~<20:
    print("2")
default:
    break
}
