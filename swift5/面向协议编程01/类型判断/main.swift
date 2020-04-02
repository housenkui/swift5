//
//  main.swift
//  类型判断
//
//  Created by 侯森魁 on 2020/4/1.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")
protocol ArrayType {}
extension Array :ArrayType {}
extension NSArray :ArrayType {}

var ttt:ArrayType.Type
ttt = Array<Int>.self
ttt = NSArray.self
ttt = NSMutableArray.self

func isArrayType(_ type:Any.Type) -> Bool {
    type is ArrayType.Type
}

print(isArrayType([Int].self))
print(isArrayType([Any].self))
print(isArrayType(NSMutableArray.self))
print(isArrayType(NSArray.self))

