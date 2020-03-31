//
//  Log.swift
//  条件编译
//
//  Created by 侯森魁 on 2020/3/31.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation
func log<T>(_ msg:T,
            file:NSString = #file,
            line:Int = #line,
            fn:String = #function) {
    #if DEBUG
    let prefix = "\(file.lastPathComponent)_\(line)_\(fn):"
    print(prefix,msg)
    #endif
    
}
