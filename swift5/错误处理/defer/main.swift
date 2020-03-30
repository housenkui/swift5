//
//  main.swift
//  defer
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
defer语句:用来定义任何方式(抛错误，return等)离开代码块之前必须要执行的代码
 */

func open(_ filename:String) -> Int {
    print("open file")
    return 0
}

func close(_ filename:Int) {
    print("close")
    
}

func processFile(_ filename:String)  throws {
    let file = open(filename)
    //使用file
    defer {
        close(file) //defer语句将延迟至当前作用域结束之前执行
    }
    defer {
        print(222) //defer语句的执行顺序与定义顺序相反
    }
    try divide(20, 0)
}

do {
    try processFile("test.txt")
} catch is SomeError {
    print("111")
}

do {
    try processFile("test.txt")
} catch let error {
    switch error {
    case let SomeError.illegalArg(msg):
        print("参数错误:",msg)
    default:
        print("其他错误")
    }
}
//try processFile("test.txt")

