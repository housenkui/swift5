//
//  main.swift
//  rethrows
//
//  Created by 侯森魁 on 2020/3/29.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

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

/*
 rethrows表明:函数本身不会抛出错误，但调用闭包参数抛出错误，那么它将错误向上抛
 */

func exec(_ fn:(Int,Int) throws ->Int,_ num1:Int,_ num2:Int) rethrows  {
    print(try fn(num1,num2))
}

try exec(divide,20,0)
