//
//  main.swift
//  CustomStringConvertible
//
//  Created by 侯森魁 on 2020/3/28.
//  Copyright © 2020 侯森魁. All rights reserved.
//


/*
 遵守CustomStringConvertible协议，可以自定义实例的打印字符串
 */
class Person: CustomStringConvertible {
    var age : Int
    var name : String
    init(age:Int,name:String) {
        self.age = age
        self.name = name
    }
 
    var description: String {
        "age=\(age),name=\(name)------"
    }
}
var p  = Person(age:10,name:"Jack")
print(p)

