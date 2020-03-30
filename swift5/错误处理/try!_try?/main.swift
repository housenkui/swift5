//
//  main.swift
//  try!_try?
//
//  Created by 侯森魁 on 2020/3/29.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

//可以使用try！、try?调用可能会抛出Error的函数，这样就不用去处理Error


/*
 Swift中可以通过Error协议自定义运行时的错误信息
 */
enum SomeError: Error {
    case illegalArg(String)
    case outOfBounds(Int,Int)
    case outOfMemory
}
/*
 函数内部通过throw抛出自定义Error，可能会抛出Error的函数必须加上throws声明
 */

func divide(_ num1:Int,_ num2:Int)  throws ->Int {
    if num2 == 0 {
        throw SomeError.illegalArg("0不能作为除数")
    }
    return num1 / num2
}

func test() {
    print("1")
    var result1 = try?divide(20, 10)
    print(result1)
    var result2 = try?divide(20, 0)
    print(result2)
    var result3 = try!divide(20, 10)
    print(result3)
    print("2")
}
test()
