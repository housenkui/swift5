//
//  main.swift
//  String
//
//  Created by 侯森魁 on 2020/3/29.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation
/*
这一块需要弄懂汇编才能看
 */

print("Hello, World!")

/*
 关于String的思考
 
 1个String变量占用多少内存?
 下面2个Sting变量，底层存储有什么不同
 */
var str1 = "0123456789"

var str2 = "0123456789ACDEF"

/*
 如果对String 进行拼接操作，String变量的存储会发生什么变化?
 */

str1.append("ABCDE")
str1.insert(">", at: str1.endIndex)

//String可以通过下标、prefix 、suffix 等截取子串，子串不是String类型，而是Substring
//Substring和String 没有关系。因为struct不支持继承

var substr = str1.prefix(1)
//substr和String共用内存空间

//多行String

let str4 = """
String与NSString之间可以随时随地桥接转换
如果你觉得String的API过于复杂难用，可以考虑将String转换为NSString

String 不能桥接转换成NSMutableString
"""
print(str4)

var str5:String = "housen"
var str6 = str5 as NSString;
var str7 = str5 as? NSMutableString;
print("str7 = ",str7)

var str:NSString = ""

//0x0000000100008330 metedata数据 0x0000000200000002 引用计数
//0x000000000000000a 数据10  0x0000000000000014 数据20  0x0000000000000000

class Person {
    var age = 10
    var weight = 20
}
/*
 isa指针             数据10              数据20
 0x011d8001000083e1 0x000000000000000a 0x0000000000000014 0x0000000000000000
 */
class Person1:NSObject {
    var age = 10
    var weight = 20
}

var p = Person()
print(Mems.memStr(ofRef: p))

var p1 = Person1()
print(Mems.memStr(ofRef: p1))
