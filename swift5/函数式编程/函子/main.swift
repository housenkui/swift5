//
//  main.swift
//  函子
//
//  Created by 侯森魁 on 2020/4/1.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

let _ = """
像Array、Optional这样支持map运算的类型，称为函子




对任意一个函子F,如果能支持以下运算，该函子就是一个适用函子
func pure<A> (_ value:A) ->F<A>
func <*><A,B>(fn:F<(A) ->B),value:F<A>)->F<B>
"""

