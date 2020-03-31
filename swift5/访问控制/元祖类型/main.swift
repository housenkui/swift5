//
//  main.swift
//  元祖类型
//
//  Created by 侯森魁 on 2020/3/30.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
 元祖类型的访问级别是所有成员类型最低的那个
 */
internal struct Dog{}
fileprivate class Person {}

//(Dog、Person)的访问级别是fileprivate
fileprivate var data1:(Dog,Person)
private var data2:(Dog,Person)
