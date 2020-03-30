//
//  main.swift
//  String
//
//  Created by 侯森魁 on 2020/3/29.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation
/*
这一块需要弄懂汇编才能看
 */

print("Hello, World!")

/*
 关于String的思考
 
 1个String变量占用多少内存?
 下面2个Sting变量，底层存储有什么不同
 */
var str1 = "0123456789"

var str2 = "0123456789ACDEF"

/*
 如果对String 进行拼接操作，String变量的存储会发生什么变化?
 */

str1.append("ABCDE")
