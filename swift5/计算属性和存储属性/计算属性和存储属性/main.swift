//
//  main.swift
//  计算属性和存储属性
//
//  Created by 侯森魁 on 2020/3/29.
//  Copyright © 2020 侯森魁. All rights reserved.
//

var arr1:[Int] = {
    return [1,2,3]
}()

var arr2:[Int] {
    return [1,2,3]
}

var arr3:[Int] {
    get{
        return [1,2,3]
    }
}

var arr4:[Int] {
    get {
        return [1]
    }
    set {
        print(newValue)
    }
}

/*
 arr1声明一个存储属性，通过闭包运算赋值
 arr2、arr3作用相同，2是3的简化形式。声明一个计算属性。只读
 arr4 声明一个计算属性、可读可写
 
 存储属性可以直接读写赋值。计算属性不能直接对其操作，其本身只起到计算作用，没有具体的值.
 */
