//
//  main.swift
//  is&as?&as!&as
//
//  Created by 侯森魁 on 2020/3/29.
//  Copyright © 2020 侯森魁. All rights reserved.
//

/*
 is 用来判断是否为某种类型，as用来做强制类型转换
 */

protocol Runnable {
    func run()
}
class Person {
    
}

class Student: Person,Runnable {
    func run() {
        print("Student  run")
    }
    func study() -> Void {
        print("Student study")
    }
}

var stu:Any = 10
print(stu is Int)

stu = "jack"
print(stu is String)

stu = Student()
print(stu is Person)
print(stu is Student)
print(stu is Runnable)


var stu1:Any = 11
/*
as? 类型转换，可能失败，所以要加上?
 */
(stu1 as? Student)?.study() //没有调用study

stu1 = Student()

(stu as? Student)?.study()
(stu as! Student).study()
(stu as? Student)?.run()


var data = [Any]()

data.append(Int("侯") as Any)
print(data)
print(data.count)

var d = 10 as Double
print(d)


