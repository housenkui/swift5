//
//  main.swift
//  函数式编程
//
//  Created by 侯森魁 on 2020/4/1.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

var arr = [1,2,3,4]

var arr2 = arr.map{$0 * 2}

var arr3 = arr.filter{$0 % 2 == 0}

var arr4 = arr.reduce(0){$0 + $1}

var arr5 = arr.reduce(0,+)//每一次遍历的结果是有关联的

print(arr2,arr3,arr4,arr5)

var arr6 = arr.map{Array.init(repeating: $0, count: $0)}

var arr7 = arr.flatMap{Array.init(repeating: $0, count: $0)}

print(arr6,arr7)

var array = ["123","test","jack","-30"]

var arr8 = array.map{Int($0)}
print(arr8)

var arr9 = array.compactMap{Int($0)}
print(arr9)

let result = arr.lazy.map{
    (i:Int)->Int in
    print("mapping\(i)")
    return i * 2
}

print("begin----")
print("mapped",result[3])
print("end-----")
