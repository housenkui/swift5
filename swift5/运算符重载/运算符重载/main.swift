//
//  main.swift
//  运算符重载
//
//  Created by 侯森魁 on 2020/3/29.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

struct Point {
    var x = 0, y = 0
    static func + (p1:Point, p2:Point) -> Point {
        Point(x:p1.x + p2.x,y:p1.y + p2.y)
    }
}



//重载
var p1 = Point(x:10,y: 20)
var p2 = Point(x:11,y: 22)
let p3 = p1 + p2
print(p3)


