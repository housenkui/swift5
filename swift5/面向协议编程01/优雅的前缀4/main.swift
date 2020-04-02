//
//  main.swift
//  优雅的前缀4
//
//  Created by 侯森魁 on 2020/4/1.
//  Copyright © 2020 侯森魁. All rights reserved.
//
import Foundation
//前缀类型
struct SK<Base> {
    var base:Base
    init(_ base:Base) {
        self.base = base
    }
}
//利用协议扩展前缀属性
protocol SKCompatible {}
extension SKCompatible {
    var sk:SK<Self> {
        set{}
        get{SK(self)}
    }
    static var sk:SK<Self>.Type {
        set{}
        get{SK<Self>.self}
    }
}
//给字符串扩展功能
extension String: SKCompatible{}
extension NSString: SKCompatible{}


//给String.mj、String().mj前缀扩展h功能
extension SK where Base :ExpressibleByStringLiteral {
    var numberCount:Int {
        var count = 0
        for c in (base as! String) where ("0" ... "9").contains(c) {
            count += 1
        }
        return count
    }
    mutating func run (){
        print("run")
    }
    static func test() {
        print("test")
    }
}

print("123123".sk.numberCount)

var str =  "121"
str.sk.run()

let str1:NSString = "12312"

print(str1.sk.numberCount)
