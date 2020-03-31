//
//  main.swift
//  条件编译
//
//  Created by 侯森魁 on 2020/3/31.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

//#if os(macOS)|| os(iOS)
//CPU架构:i386

#if DEBUG
print("Debug")
#else
print("Release")
#endif
log("1")
