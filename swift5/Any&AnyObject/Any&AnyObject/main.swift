//
//  main.swift
//  Any&AnyObject
//
//  Created by 侯森魁 on 2020/3/28.
//  Copyright © 2020 侯森魁. All rights reserved.
//

/*
 Swift 提供了2中特殊的类型:Any /AnyObject
 Any:可以代表任意类型(枚举、结构体、类，也包括函数类型，甚至是闭包）
 AnyObject:可以代表任意类类型(在协议后面写上；AnyObject代表只能有类能遵守这个协议)
 */

protocol run {
    
}
class Person: run {
    
}
struct Person1:run {
    
}

//创建一个能存放任意类型的数组
var data1 = Array<Any>()
var data = [Any]()

data.append(1)
data.append(1.1)
data.append(Person())
data.append("Jack")
data.append({10})
