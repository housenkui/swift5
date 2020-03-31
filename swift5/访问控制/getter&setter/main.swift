//
//  main.swift
//  getter&setter
//
//  Created by 侯森魁 on 2020/3/30.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
 getter、setter默认自动接收它们所属环境的访问级别
 可以给setter单独设置一个比getter更低的访问级别，用来限制写得权限
 
 读写权限都不相同，666
 */
fileprivate(set)public var num = 10

class Person {
    private(set) var age = 0
    fileprivate(set) public var weight:Int {
        set{}
        get{10}
    }
    internal(set)public subscript(index:Int) ->Int {
        set{}
        get{index}
    }
    
}

/*
 如果一个public类想在另一个模块调用编译生成的默认无参初始化器，必须显式提供public的无参初始化器
 因为public类的默认初始化器是internal级别
 
 request 初始化器必须跟它所属类拥有相同的访问级别
 
 */
/*
 书写三方库的注意
 */
//abc.dylib
public class Person2{
    public init() {
        
    }
}

//TestSwift
var p = Person()

/*
 如果结构体有private/fileprivate的存储实例属性，那么它的成员初始化器也是private/fileprivate

 */
struct Point {
    var x = 0
//    private var y = 0
}
var point = Point(x:0)
