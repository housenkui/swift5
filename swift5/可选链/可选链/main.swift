//
//  main.swift
//  可选链
//
//  Created by 侯森魁 on 2020/3/28.
//  Copyright © 2020 侯森魁. All rights reserved.
//

/*
 在swift中nil是不能调用 方法的
 */
class Car {
    var price = 0
    
}
class Dog {
    var weight = 0
}
class Person {
    var name:String = ""
    var dog:Dog = Dog()
    
    var car:Car? = Car()
    func age() -> Int {
        18
    }
    func eat() -> Void {
        print("Person eat")
    }
    subscript(index:Int)->Int{
        index
    }
    func getName() -> String {
        "jack"
    }
    //如果person 是nil,不会调用getName()
   
    
}

var person:Person = Person()
var age = person.age()
var name = person.name


var person1:Person? = Person() //Int?
var age1 = person1?.age() //Int
var name1 = person1?.name //String?
var index = person1?[6]


//如果person是nil,不会调用getName()
person1?.getName()

//如果可选项为nil,调用方法、下标、属性失败、结果为nil
//如果可选项不为nil,调用方法、下标、属性成功，结果会被包装成可选项
//如果结果本来就是可选项，不会进行再次包装

/*可选项绑定*/
if let _ = person1?.eat() {
    print("调用eat成功")
}else {
    print("调用eat失败")
}

/*多个可选连可以连接在一起*/
var price = person1?.car?.price

var source = [
    "Jack":[78,79,80],
    "Rose":[8,5,7]
]
var s  = source["Jack"]?[0]
print(s)


var num1:Int? = 5
num1? = 10
print(num1)
var num2:Int? = nil
num2? = 10
print(num2)

var dict: [String :(Int,Int) ->Int] = [
    "sum":(+),//value是函数接收两个整形参数，返回Int的函数
    "difference":(-)
]
var result = dict["sum"]?(10,20)
print(result)

