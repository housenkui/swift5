//
//  main.swift
//  枚举case模式
//
//  Created by 侯森魁 on 2020/3/30.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

let age = 2
func test() {
    //原来的写法
    if age >= 0 && age <= 9 {
        print("[0,9]")
    }
    
    if case 0...9 = age {
        print("[0,9]")
    }
    
    guard case 0...9 = age else { return }
    print("[0,9]")
    
    switch age {
    case 0...9:
        print("[0,9]")
    default:
        break
    }
    
    let ages:[Int?] = [2,3,nil,5]
    for case nil in ages {
        print("有nil值")
        break
    }
}
test()
