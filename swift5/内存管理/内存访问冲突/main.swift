//
//  main.swift
//  内存访问冲突
//
//  Created by 侯森魁 on 2020/3/30.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
 内存访问冲突会在两个访问满足以下条件时发生:
 1.至少一个是写操作
 2.它们访问的是同一块内存
 3.它们的访问时间重叠(比如在同一个函数内)
 */

var step = 1
func increment(_ num:inout Int) {
    num += step
}
var temp = step
increment(&temp)
step = temp
print(step)

/*
 如果下面的条件可以满足，就说明重叠访问结构体属性是安全的
 
 你只访问实例存储属性，不是计算属性或者类属性
 结构体是局部变量而非全局变量
 结构体要么没有被闭包捕获要么只被非逃逸闭包捕获
 */


/*
 指针；
 Swift中也有专门的指针类型，这些都被定性为”Unsafe“(不安全的),常见的有以下4中类型
 
 */
//UnsafePointer
//UnsafeMutablePointer
//UnsafeRawPointer
//UnsafeMutableRawPointer
//var age  = 10
//func test1(_ ptr:UnsafeMutableRawPointer ){
//
//}
//
//func test2(_ ptr: UnsafePointer ){
//}
//
//test1(&age)

var arr = NSArray(objects: 11,22,33,44)
arr.enumerateObjects { (element, idx, stop) in
    print(idx,element)
    if idx == 2 {
        stop.pointee = true
    }
}
for (idx,element) in arr.enumerated() {
    print(idx,element)
    if idx == 1 {
        break
    }
}
var age = 10
var age1 = 11
var ptr = withUnsafePointer(to: &age) {$0}
//获取某个变量的指针
var ptr1 = withUnsafeMutablePointer(to: &age1) { $0}
print(ptr.pointee)

