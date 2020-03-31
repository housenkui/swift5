//
//  main.swift
//  Swift调用OC1
//
//  Created by 侯森魁 on 2020/3/31.
//  Copyright © 2020 侯森魁. All rights reserved.
//


/*
 新建1个桥接头文件.文件名格式默认:{targetName}-Bridge-Hearder.h
 */
func sum(_ a:Int,_ b:Int)->Int{
    a - b
}
//修改C语言的方法名
@_silgen_name("sum")
func swift_sum(_ a:Int32,_ b:Int32) -> Int32
print(sum(10, 30))
print(swift_sum(10, 30))


var str:String = ""
var person = SKPerson()
person.run()

