//
//  main.swift
//  @escaping
//
//  Created by 侯森魁 on 2020/3/30.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")
/*
 非逃逸闭包、逃逸闭包，一般都是当做函数的参数传递给函数
 非逃逸闭包：闭包调用发生在函数结束前，闭包调用在函数作用域内
 逃逸闭包:  闭包有可能在函数结束后调用，闭包调用逃离了函数的作用域，需要通过@escaping声明
 */
import Dispatch
typealias Fn = ()->()
//fn是非逃逸闭包
func test1(_ fn:Fn) {
    fn()
}
//fn是逃逸闭包
var gFn:Fn?
func test2(_ fn:@escaping Fn) {
    gFn = fn
}
//fn是逃逸闭包
var gFn1:Fn?
func test3(_ fn:@escaping Fn) {
    DispatchQueue.global().async {
        fn()
    }
}
