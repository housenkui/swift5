//
//  main.swift
//  扩展(Extension)
//
//  Created by 侯森魁 on 2020/3/29.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
 Swift中的扩展，有点类似于OC中的分类
 扩展可以为枚举、结构体、类、协议添加新功能
 
 可以添加方法、计算属性、下标、(便捷)初始化器、嵌套类型、协议等等
 */
var arr:Array<Int> = [1,2,3]

print(arr.startIndex)
print(arr.endIndex)

extension Array {
    subscript(nullable idx:Int) -> Element? {
        if(startIndex..<endIndex).contains(idx) {
            return self[idx]
        }
        return nil
    }
}
var e = arr[0]
print(e)

var e1 = arr[nullable:10] ?? 054
print(e1)
