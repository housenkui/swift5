//
//  main.swift
//  类型约束
//
//  Created by 侯森魁 on 2020/3/29.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

protocol Runnable {
    
}
class Person {
    
}
func swapVale<T:Person & Runnable>(_ a:inout T,_ b:inout T)  {
    (a,b) = (b,a)
}

protocol Stackable {
    associatedtype Element:Equatable //关联类型要遵守的协议
}
class Stack<E:Equatable>:Stackable {
    typealias Element = E 
}

func equal<S1:Stackable,S2:Stackable>(_ s1:S1,_ s2:S2) -> Bool
    where S1.Element == S2.Element,S1.Element:Hashable
{
  return false
}
var s1  = Stack<Int>()
var s2  = Stack<Int>()
var s3  = Stack<String>()
var s4  = Stack<String>()

equal(s1, s2)
equal(s3, s4)

//关联类型S1 S2必须遵守Stackable协议，并且S1的类型和S2的类型要相同，而且S1必须要遵守Hashable协议
