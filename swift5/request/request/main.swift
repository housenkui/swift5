//
//  main.swift
//  request
//
//  Created by 侯森魁 on 2020/3/28.
//  Copyright © 2020 侯森魁. All rights reserved.
//

/*
用request修饰指定初始化器，表明其所有子类必须实现该初始化器(通过继承或者重写实现)
 如果子类重写了requested初始化器，也必须加上required，不用加上override
 */

class Person {
    required init() {
        
    }
    init(age:Int) {
        
    }
}
class Student: Person {
    init(no:Int) {
        super.init(age: 0)
    }
    required init() {
        super.init()
    }
}

class Student1: Person {
    
}
