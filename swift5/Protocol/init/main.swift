//
//  main.swift
//  init
//
//  Created by 侯森魁 on 2020/3/28.
//  Copyright © 2020 侯森魁. All rights reserved.
//

/*
 
 协议中还可以定义初始化器init
 非final类实现是必须加上required
 */
protocol Drawable {
    init(x:Int,y:Int)
}

class Point: Drawable {
    required init(x: Int, y: Int) {
        
    }
}

final class Size:Drawable {
    init(x: Int, y: Int) {
        
    }
}


/*
 如果从协议实现的初始化器，刚好是重写了父类的指定初始化器
 那么整个初始化必须同时加上required  override
 */
protocol Liveable {
    init(age: Int)
}
class Person {
    init(age:Int){}
}
class Student: Person {
    required override init(age: Int)
        {
            super.init(age: age)
        }
    
}

