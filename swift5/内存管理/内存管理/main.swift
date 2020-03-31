//
//  main.swift
//  内存管理
//
//  Created by 侯森魁 on 2020/3/30.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
 跟OC一样，Swift也是采取引用计数的ARC内存管理方案(针对堆空间)
 Swift的ARC中有3种引用
 强引用(strong reference):默认情况下，引用都是强引用
 
 弱引用(weak reference):通过weak定义弱引用 必须是可选类型的var,因为实例销毁后，ARC会自动将弱引用设置为nil
 ARC自动给弱引用设置nil时，不会触发属性观察器
 
 无主引用(unowned reference)；通过unowned定义无主引用
 不会产生强引用，实例销毁后仍然存储着实例的内存地址(类似于OC中的unsafe_unretained)
 */

class Person {
    deinit {
        print("Person.deinit")
    }
}
func test(){
    let p = Person()
}
print(1)
var p:Person? = Person()
print(2)
p = nil
print(3)

/*
 weak /unowned只能用在类实例上面
 因为类实例是在堆空间创建、而结构体、枚举实例不是在堆空间创建
 */
