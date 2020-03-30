//
//  main.swift
//  错误处理
//
//  Created by 侯森魁 on 2020/3/29.
//  Copyright © 2020 侯森魁. All rights reserved.
//
import Foundation
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
//var result = try divide(20,0)
//
//print(result)

/*
 处理Error的2种方式
 1.通过do-catch捕捉Error
 2.不捕捉Error,在当前函数增加throws声明，Error将自动抛给上层函数
 如果最顶层函数(main函数)依然没有捕捉Error，那么程序将终止
 **/
func test()  {
    print(1)
    do {
        print(2)
        print( try divide(20,0))
        print(3)
    } catch let SomeError.illegalArg(msg) {
        print("参数异常:",msg)
    }
    catch let SomeError.outOfBounds(size, index) {
        print("下标越界:","size = \(size)","index = \(index)")
    }catch SomeError.outOfMemory {
        print("内存溢出")
    }catch{
        print("其他错误")
    }
    print(4)
}
test();

func test1() throws  {
    print(2)
    print( try divide(20,0))
    print(3)
}
//try test1()


func test2() throws  {
    print(1)
    do {
        print(2)
        print( try divide(20,0))
        print(3)
    }catch let error as SomeError {
        print(error)
    }
    print(4)
    
}
try test2()

do {
      print( try divide(20,0))
} catch is SomeError {
    print("SomeError")
}
