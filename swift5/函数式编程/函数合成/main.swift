//
//  main.swift
//  函数合成
//
//  Created by 侯森魁 on 2020/4/1.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

//假如要实现以下功能:[(num + 3) * 5 - 1] % 10 / 2
let num = 1
func add(_ v:Int)->(Int)->Int {{$0 + v}}
func sub(_ v:Int)->(Int)->Int {{$0 - v}}
func multiple(_ v:Int)->(Int)->Int {{$0 * v}}
func divide(_ v:Int)->(Int)->Int {{$0 / v}}
func mod(_ v:Int)->(Int)->Int {{$0 % v}}


//函数合成
infix operator >>> :AdditionPrecedence

//func >>> (_ f1:@escaping (Int) -> Int,
//          _ f2:@escaping (Int) -> Int)
//            -> (Int) -> Int {
//                {
//                    f2(f1($0))
//                }
//}

//A,B,C 泛型
func >>> <A,B,C> (_ f1:@escaping (A) -> B,
          _ f2:@escaping (B) -> C)
            -> (A) -> C {
                {
                    f2(f1($0))
                }
}

let fn = add(3)>>>multiple(5)>>>sub(1)>>>mod(10)>>>divide(2)
print(fn(num))
