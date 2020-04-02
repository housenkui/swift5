//
//  main.swift
//  优雅的前缀01
//
//  Created by 侯森魁 on 2020/4/1.
//  Copyright © 2020 侯森魁. All rights reserved.
//

struct SK<Base> {
    var base:Base
    init(_ base:Base) {
        self.base = base
    }
}
extension String {
    var sk:SK<String> {SK(self)}
    static var sk:SK<String>.Type {SK<String>.self}
}

class Person {}
extension Person {
    var sk:SK<Person>{SK(self)}
}
//扩展
extension SK where Base == String {
    var numberCount:Int {
        var count = 0
        for c in base where ("0" ... "9").contains(c) {
            count += 1
        }
        return count
    }
    static func test() {
        print("test")
    }
}
String.sk.test()
extension SK where Base:Person {
    func run() {
        print("run")
    }
}

let p = Person()
p.sk.run()
print("123123".sk.numberCount)

