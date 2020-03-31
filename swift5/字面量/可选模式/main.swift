//
//  main.swift
//  可选模式
//
//  Created by 侯森魁 on 2020/3/31.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")
do{
    let age:Int? = 42
    if case .some(let x) = age{print(x)}
    if case let x? = age {print(x)}
}

do{
    let ages:[Int?] = [nil,2,3,nil,5]
    for case let age? in ages {
        print(age)
    }
}

do{
     let ages:[Int?] = [nil,2,3,nil,5]
     for item in ages {
        if let age = item {
            print(age)
        }
    }
}//跟上面的for.效果是等价的

do{
    func check(_ num:Int?) -> Void {
        switch num {
        case 2?:
            print("2")
        case 4?:
            print("4")
        case 6?:
            print("6")
        case _?:
            print("other")
        case _:
            print("nil")
        }
    }
    check(4)
    check(8)
    check(nil)
}
