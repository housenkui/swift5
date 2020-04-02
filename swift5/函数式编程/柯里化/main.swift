//
//  main.swift
//  柯里化
//
//  Created by 侯森魁 on 2020/4/1.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

func add(_ v1:Int,_ v2:Int)->Int{ v1 + v2}
func sub(_ v1:Int,_ v2:Int)->Int{ v1 - v2}
func multiple(_ v1:Int,_ v2:Int)->Int{ v1 * v2}
func divide(_ v1:Int,_ v2:Int)->Int{ v1 / v2}
func mod(_ v1:Int,_ v2:Int)->Int{ v1 % v2}

func add2(_ v1:Int,_ v2:Int,_ v3:Int)->Int{ v1 + v2 + v3}

prefix func ~<A,B,C,D>(_ fn:@escaping (A,B,C)->D)->(C)->(B)->(A)->D {
    {c in {b in {a in fn(a,b,c)}}}
}
print((~add2)(30)(20)(10))

let result = add(10,20)

print(result)

prefix func ~<A,B,C>(_ fn: @escaping (A,B) -> C) ->(B)->(A) ->C {
     { b in { a in fn(a, b)}}
}
//函数合成
infix operator >>> :AdditionPrecedence

//A,B,C 泛型
func >>> <A,B,C> (_ f1:@escaping (A) -> B,
          _ f2:@escaping (B) -> C)
            -> (A) -> C {
                {
                    f2(f1($0))
                }
}

let fn = (~add)(3) >>> (~multiple)(5) >>> (~sub)(1) >>> (~mod)(10) >>> (~divide)(2)
print(fn(1))

print((~add)(20)(10),
(~sub)(20)(10),
(~multiple)(20)(10),
(~divide)(20)(10),
(~mod)(20)(10))


