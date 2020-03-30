//
//  main.swift
//  self_Type_AnyClass
//
//  Created by 侯森魁 on 2020/3/29.
//  Copyright © 2020 侯森魁. All rights reserved.
//

/*
 x.self是一个元类型(metadata)的指针,metadata存放着类型相关信息
 x.self属于x.Type类型
 
 
 (lldb) register read rax
      rax = 0x00000001000020e8  type metadata for self_Type_AnyClass.Person
 (lldb) register read rax  Person对象
      rax = 0x00000001031000c0
 (lldb) x/4xg 0x00000001031000c0
 0x1031000c0: 0x00000001000020e8 0x0000000000000002  Person对象的前八个字节存放的是metadata(元类型数据)
 0x1031000d0: 0x0000000000000000 0x0000000000000000
 (lldb)
 */

class Person {}
class Student: Person {}

var p = Person()

var pType:Person.Type =  Person.self

var anyType:AnyObject.Type = Person.self
anyType = Student.self

public typealias AnyClass = AnyObject.Type
var anyType2:AnyClass = Person.self
anyType2 = Student.self

var per = Person()

var perType = type(of: per) //Person.self   type(of: per) 没有进行call的操作，直接取出对象空间的前八个字节

print(Person.self == type(of: per)) //true

print(pType)

