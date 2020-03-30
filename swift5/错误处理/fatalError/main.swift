//
//  main.swift
//  fatalError
//
//  Created by 侯森魁 on 2020/3/29.
//  Copyright © 2020 侯森魁. All rights reserved.
//

/*
 fatalError
 
 如果遇到严重问题，希望结束j程序运行时，可以直接使用fatalError函数抛出错误(这是无法通过do-catch捕捉的错误)
 
 使用了fatalError 不再需要些return
 */

func test(_ num:Int) -> Int {
    if num >= 0 {
        return 1
    }
    fatalError("num不能小于0")
}
