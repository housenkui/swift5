//
//  main.swift
//  隐藏基类
//
//  Created by 侯森魁 on 2020/3/29.
//  Copyright © 2020 侯森魁. All rights reserved.
//
import Foundation
class Person {
    var age:Int = 0
}

class Student: Person {
    var no:Int = 0
}
print(class_getInstanceSize(Student.self)) //32
print(class_getSuperclass(Student.self)!) //Person
print(class_getSuperclass(Person.self)!) //swift._SwiftObject
//这样做符合设计模式


