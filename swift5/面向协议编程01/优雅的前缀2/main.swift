//
//  main.swift
//  优雅的前缀2
//
//  Created by 侯森魁 on 2020/4/1.
//  Copyright © 2020 侯森魁. All rights reserved.
//

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
    var sk:SK<Self> {SK(self)}
    static var sk:SK<Self>.Type {SK<Self>.self}
}
//给字符串扩展功能
extension String: SKCompatible{}

//给String.mj、String().mj前缀扩展h功能
extension SK where Base == String {
    var numberCount:Int {
        var count = 0
        for c in base where ("0" ... "9").contains(c) {
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

