//
//  main.swift
//  可失败初始化器
//
//  Created by 侯森魁 on 2020/3/28.
//  Copyright © 2020 侯森魁. All rights reserved.
//

/*
 
 类、结构体、枚举都可以使用init?定义可失败初始化器
 
 */
class Person {
    var name :String
    init?(name:String) {
        if name.isEmpty {
            return nil
        }
        self.name = name
    }
}

var p1 = Person(name: "")
print(p1)
var p2 = Person(name: "j")
print(p2)

class Person2 {
    var name :String
    convenience init?(name:String) {
        self.init()
        if name.isEmpty {
            return nil
        }
        self.name = name
    }
    init() {
        self.name = ""
    }
}

class Person3 {
    var name :String
     init?(name:String) {
        if name.isEmpty {
            return nil
        }
        self.name = name
    }
   convenience init() {
    self.init(name:"")!
    }
}

class Person4 {
    var name :String
     init!(name:String) {
        if name.isEmpty {
            return nil
        }
        self.name = name
    }
   convenience init() {
    self.init(name:"")
    }
}

/*
 之前接触过的可失败初始化器
 
 可以用init!定义隐式解包的可失败初始化器
 
 可失败初始化器可以调用非可失败初始化器，非可失败初始化器调用可失败初始化器需要进行解包
 */
var num = Int("123")

print(num)

enum Answer:Int {
    case wrong,right
}
var an = Answer(rawValue: 1)
print(an)


class Person5 {
    var name :String
    init?(name:String) {
        if name.isEmpty {
            return nil
        }
        self.name = name
    }
    convenience init?() {
        self.init(name:"")
        self.name = "j"
    }
}
/*
 如果初始化器调用一个可失败初始化器导致初始化失败，那么整个初始化过程都失败，并且之后的代码都停止执行 Person5
 */

