//
//  main.swift
//  协议类型注意点
//
//  Created by 侯森魁 on 2020/3/29.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")


//解决问题
protocol Runnable {
    associatedtype Speed
    var speed:Speed {get}
}

class Person: Runnable {
    var speed:Double{0.0}
}
class Car: Runnable {
    var speed: Int {0}
}

//func get(_ type:Int) -> Runnable {
//    if type == 0 {
//        return Person() as
//    }
//    return Car() as
//}
//var r1 = get(0)
//var r2 = get(1)

//上面的报错可以通过，下面的代码解决 （泛型来解决）

//func get<T:Runnable>(_ type:Int) -> T {
//    if type == 0 {
//        return Person() as! T
//    }
//    return Car() as! T
//}

//也可以通过some 来解决 不透明类型，只开放部分接口 对象的细节不暴露，只可以使用protocol中的方法
func get(_ type:Int) ->some Runnable {
    
    return Car()
}

var r1 = get(0)
var r2 = get(1)

/*
 some除了用在返回值类型上，一般还可以用在属性类型上
 */
class Dog: Runnable {
    typealias Speed = Double
    var speed:Double{0.0}
}
class Person2 {
    var Pet:some Runnable {
        return Dog()
    }
}
