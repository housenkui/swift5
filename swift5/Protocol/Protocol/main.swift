//
//  main.swift
//  Protocol
//
//  Created by 侯森魁 on 2020/3/28.
//  Copyright © 2020 侯森魁. All rights reserved.
//

/*
 协议可以用来定义方法、属性、下标的声明，协议可以被枚举、结构体、类遵守(多个协议之间用逗号隔开)
 
 协议中定义属性必须用 var关键字
 */

protocol Drawable {
    func draw()
    var x:Int {get set}
    var y:Int {get}
    subscript(index:Int)->Int {get set}
    
}
protocol Test1 {
    
}
protocol Test2 {
    
}
protocol Test3 {
    
}

class TestClass: Test1,Test2,Test3 {
    
}
/*
 1.协议中定义方法时不能有默认参数值
 2.默认情况下。协议中定义的内容必须全部都实现
 3.实现协议的属性权限要不小于协议中定义的属性权限
 4.协议定义get、set,用var存储属性或者get/set计算属性去实现
 
 */

class Person: Drawable {
    var x:Int = 0 //存储属性
    let y:Int = 0
    func draw() {
        print("Person draw")
    }
    subscript(index: Int) -> Int {
        set {}
        get { index }
    }
}


class Person1: Drawable {
    var x:Int {
        get {0}
        set {}
    }
    var y:Int {0}
    func draw() {
        print("Person draw")
    }
    subscript(index: Int) -> Int {
        set {}
        get { index }
    }
}
