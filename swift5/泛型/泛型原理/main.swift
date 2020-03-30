//
//  main.swift
//  泛型原理
//
//  Created by 侯森魁 on 2020/3/29.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

func swapValue<T>(_ a:inout T,_ b:inout T) {
    (a,b) = (b,a)
}
/*
 直接汇编调试 可以发现泛型的实现涉及到metaType
 */
