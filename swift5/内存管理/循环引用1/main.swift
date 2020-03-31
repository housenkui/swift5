//
//  main.swift
//  循环引用1
//
//  Created by 侯森魁 on 2020/3/30.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

/*
 如果lazy属性是闭包调用的结果，那么不用考虑循环引用的问题(因为闭包调用后，闭包的生命周期就结束了)
 */
class Person {
    var age:Int = 11
    lazy var getAge:Int = {
        age
    }()
    deinit {
        print("deinit")
    }
}
func test () {
    var p = Person()
    print(p.getAge)
    
}
test()
