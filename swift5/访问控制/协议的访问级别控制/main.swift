//
//  main.swift
//  协议的访问级别控制
//
//  Created by 侯森魁 on 2020/3/30.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")
public protocol Runnable {
    func run()
}
class Person: Runnable {
    func run() {
        print("run")
    }
}
/*
 协议中定义的要求自动接收协议的访问级别，不能单独设置访问级别
 public 协议定义的要求也是public
 协议实现的访问级别必须 >=类型的访问级别、或者 >= 协议的访问级别
 */




public class Person1 {
    private func run0(){}
    private func eat0(){
        run1()
    }
    
}
extension Person1 {
    private func run1(){}
    private func eat1(){
        run0()
    }
}
