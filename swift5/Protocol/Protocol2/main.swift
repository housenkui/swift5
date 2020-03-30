//
//  main.swift
//  Protocol2
//
//  Created by 侯森魁 on 2020/3/28.
//  Copyright © 2020 侯森魁. All rights reserved.
//

/*
 为了保证通用、协议中必须用static定义类型方法、类型属性、类型下标
 */
protocol Drawable {
    static func draw()
}
class Person1: Drawable {
    class func draw() { //使用class 允许子类重写
         print("Person1 Drawable")
    }
       
}
class Person2: Drawable {
    static func draw() {
        print("Person2 draw")
    }
}

class Student: Person1 {
     func draw() {
        print("Student draw")
    }
}

let s =  Student()

s.draw()
