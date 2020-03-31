//
//  main.swift
//  调用细节
//
//  Created by 侯森魁 on 2020/3/31.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")
/*
 swift暴露给OC的类需要继承自NSObject,因为底层走runtime,需要isa指针
 
 OC暴露给swift的底层也走runtime 可以通过汇编 直接就能看出来
 
 而在swift中直接调用自己的方法，走类虚表
 */
