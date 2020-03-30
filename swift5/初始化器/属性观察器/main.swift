//
//  main.swift
//  属性观察器
//
//  Created by 侯森魁 on 2020/3/28.
//  Copyright © 2020 侯森魁. All rights reserved.
//

/*
 属性观察器
 父类的属性在它自己的初始化器中赋值不会触发属性观察器，但在子类的初始化器中赋值会触发属性观察器
 */

class Person {
    var age :Int {
        willSet {
            print("willset",newValue);
        }
        didSet {
            print("didSet",oldValue,age)
        }
    }
    init() {
        self.age = 0;
    }
}

class Student: Person {
    override init() {
        super.init()
        self.age = 1
    }
}


var stu = Student()
