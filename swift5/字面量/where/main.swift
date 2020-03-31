//
//  main.swift
//  where
//
//  Created by 侯森魁 on 2020/3/31.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
 可以使用where为模式匹配增加匹配条件
 */
var data = (10,"Jack")
switch data {
case let (age,_) where age > 10:
    print(data.1,"age > 10")
case let (age,_) where age > 0:
    print(data.1,"age > 0")
default:
    break
}

var ages = [10,20,30,40,50]

for age in ages where age > 30 {
    print(age)
}
