//
//  main.swift
//  @escaping2
//
//  Created by 侯森魁 on 2020/3/30.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation
import Dispatch
typealias Fn = ()->()
class Peron {
    var fn:Fn
    //
    init(fn:@escaping Fn) {
        self.fn = fn
    }
    func run() {
        
        //DispatchQueue.global().async也是一个逃逸闭包
        //它用到了实例成员(属性、方法)，编译器会强制要求明确写出self
        DispatchQueue.global().async {
            self.fn()
        }
    }
}
/*
 逃逸闭包的注意点
 逃逸闭包不可以捕获inout参数 因为inout参数是指针类型 而逃逸闭包的执行时间不确定，拿到一个指针可以在任何时机更改值，这样不合理
 */
print("Hello, World!")

