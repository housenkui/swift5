//
//  main.swift
//  表达式模式01
//
//  Created by 侯森魁 on 2020/3/31.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")
//可以通过重载运算符，自定义表达式的匹配规则
struct Student {
    var score = 0,name = ""
    static func ~= (pattern:Int,value:Student) -> Bool {
        value.score >= pattern
    }
    static func ~= (pattern:Range<Int>,value:Student) ->Bool {
        pattern.contains(value.score)
    }
    static func ~= (pattern:ClosedRange<Int>,value:Student)->Bool {
        pattern.contains(value.score)
    }
}

var stu = Student(score: 75, name: "Jack")
switch stu {
case 100:print(">=100")
case 90:print(">=90")
case 80..<90:print("80,90")
case 60...79:print("60,79")
case 0:print(">=0")
default:break
}

//函数式编程
func hasPrefix(_ prefix:String) -> ((String)->Bool) {
    return {
        (str:String) ->Bool in
        str.hasPrefix(prefix)
    }
}
extension String {
    static func ~= (pattern:(String) -> Bool,value:String)->Bool {
        pattern(value)
    }
}

func hasPrefix1(_ prefix:String) -> ((String)->Bool) {{$0.hasPrefix(prefix)}}
func hasSuffix1(_ suffix:String) -> ((String)->Bool) {{$0.hasSuffix(suffix)}}

var fn = hasPrefix("21")
print(fn("123456"))

//var str = "123456"

var str = "66656"

switch str {
case hasPrefix1("123"),hasSuffix1("456"):
    print("以123开头 或者以456结束")
default:
    break
}

func isEven(_ i:Int)->Bool {
    i%2 == 0
}
func isOdd(_ i:Int)->Bool {
    i%2 != 0
}
extension Int {
    static func ~= (pattern:(Int)->Bool,value:Int)->Bool {
        pattern(value)
    }
}
var age = 9
switch age {
case isEven:
    print(age,"是偶数")
    case isOdd:
    print(age,"是奇数")
default:
    break
}
