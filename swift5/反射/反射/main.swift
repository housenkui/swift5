//
//  main.swift
//  反射
//
//  Created by 侯森魁 on 2020/4/2.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
 反射是编程语言中一项强大的能力，比如Java语言的反射机制
 1.对于任意一个类型，都能够动态获取这个类的所有属性和方法信息
 2.对于任意类型，都能够动态调用它的任意方法和属性
 Swift的反射机制比较弱，通过Mirror类型来提供简单的反射功能
 */
struct Person {
    var age:Int = 0
    var name: String = ""
}
let  mirror = Mirror(reflecting: Person(age: 10, name: "hou"))

//struct
print(mirror.displayStyle!)

//Person
print(mirror.subjectType)
print(mirror.superclassMirror as Any)

for case let (lable?,value) in mirror.children {
    print(lable,value)
}
