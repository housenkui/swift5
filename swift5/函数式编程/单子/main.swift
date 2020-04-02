//
//  main.swift
//  单子
//
//  Created by 侯森魁 on 2020/4/1.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

let _ = """
对于任意一个类型F,如果能支持以下运算，那么就可以称为是一个单子(Monad)

func pure<A>(_value:A) ->F<A>
func flatMap<A,B>(_ value:F<A>,_ fn:A)->F<B>) -> F<B>
"""
