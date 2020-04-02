//
//  main.swift
//  面向协议编程01
//
//  Created by 侯森魁 on 2020/4/1.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

var str = ""
struct SK {
    var string:String
    init(_ string:String) {
        self.string = string
    }
    var numberCount:Int {
        var count = 0
        for c in string where ("0" ... "9").contains(c) {
            count += 1
        }
        return count
    }
    func test() {
        print("test---")
    }
}
extension String {
    var sk:SK {return SK(self)}
}
print("2a".sk.numberCount)
"hou".sk.test()
