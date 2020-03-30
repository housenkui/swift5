//
//  main.swift
//  计算属性和存储属性3
//
//  Created by 侯森魁 on 2020/3/29.
//  Copyright © 2020 侯森魁. All rights reserved.
//


/*
 计算属性
 本质就是方法(函数)
 不占用实例的内存
 */
struct Circle {
    //存储属性
    var radius:Double
    //计算属性
    var diameter:Double {
        set {
            radius = newValue / 2
        }
        get{
            radius * 2
        }
    }
}


struct Circle1 {
    //存储属性
    var radius:Double
    var radius1:Double  //多了一个Double存储属性
    //计算属性
    var diameter:Double {
        set {
            radius = newValue / 2
        }
        get{
            radius * 2
        }
    }
}



var circle = Circle(radius: 10)
circle.diameter = 40

//print(circle.radius)
circle.radius = 11

//print(circle.radius)
//
//print(MemoryLayout<Double>.stride) //输出Double类型数据占用8个字节
//
//print(MemoryLayout<Circle>.stride) //输出Circle类型数据占用8个字节
//print(MemoryLayout<Circle1>.stride) //输出Circle类型数据占用16个字节 由此可知道计算属性本质是方法
//可以汇编调试查看
