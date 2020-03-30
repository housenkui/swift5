//
//  main.swift
//  mutating
//
//  Created by 侯森魁 on 2020/3/28.
//  Copyright © 2020 侯森魁. All rights reserved.
//

/*
 只有将协议中的实例方法标记为mutating
 才允许结构体、枚举的具体实现修改自身内存
 类在实现方法时不用加mutating、枚举、结构体才需要加mutating
 */

protocol Drawable {
    mutating func draw()
}
class Size: Drawable {
    func draw() {
        
    }
}
struct Point:Drawable {
    var x:Int = 0
    mutating func draw() {
        x = 10
    }
}
var p = Point()
p.draw()
print(p.x)
