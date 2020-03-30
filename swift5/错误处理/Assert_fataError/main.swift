//
//  main.swift
//  Assert_fataError
//
//  Created by 侯森魁 on 2020/3/29.
//  Copyright © 2020 侯森魁. All rights reserved.
//


func divide(_ num1:Int,_ num2:Int) -> Int {
    assert(num2 != 0,"除数不能为0") //默认在debug模式下使用
    return num1 / num2
}
/*
 增加Swift、Flags修改断言的默认行为
 -assert-config Release :强制关闭断言
 -assert-config Debug :强制开启断言
 */



print(divide(10, 0));
