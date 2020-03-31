//
//  main.swift
//  关联对象
//
//  Created by 侯森魁 on 2020/3/31.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

/*
 在swift中，在
 */
class Person {}
extension Person {
    private static var AGE_KEY = false//只占用一个字节，节省内存
    private static var WEIGHT_KEY = false//只占用一个字节，节省内存
    var age:Int {
        get {
            objc_getAssociatedObject(self, &Self.AGE_KEY) as! Int
        }
        set {
            objc_setAssociatedObject(self, &Self.AGE_KEY, newValue, .OBJC_ASSOCIATION_ASSIGN)
        }
    }
    var weight:Int {
           get {
               objc_getAssociatedObject(self, &Self.WEIGHT_KEY) as! Int
           }
           set {
               objc_setAssociatedObject(self, &Self.WEIGHT_KEY, newValue, .OBJC_ASSOCIATION_ASSIGN)
           }
       }
}
var p = Person()
p.age = 10
p.weight = 20
print(p.age,p.weight)
