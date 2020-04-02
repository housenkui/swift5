//
//  main.swift
//  高阶函数
//
//  Created by 侯森魁 on 2020/4/1.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

/*
 高阶函数是至少满足以下一个条件的函数:
 1.接受一个或者多个函数作为输入(map,filter,reduce等)
 2.返回一个函数
 */

let _ = """
什么是Currying
1.将一个接受多个参数的函数变换为一系列只接受单个参数的函数
"""
func add1(_ v:Int) -> (Int)->Int{
    {$0 + v}
}
print(add1(10)(20))

func add2(_ v1:Int,_ v2:Int,_ v3:Int) -> Int {
    v1 + v2 + v3
}

func add3(_ v3:Int)->(Int)->(Int)->Int {
    //v2 == 20
    return { v2 in
        //v1 == 30
        return { v1 in
            return v1 + v2 + v3
        }
    }
}
print(add3(30)(20)(10))
