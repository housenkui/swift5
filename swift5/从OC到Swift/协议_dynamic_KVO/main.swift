//
//  main.swift
//  协议_dynamic_KVO
//
//  Created by 侯森魁 on 2020/3/31.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation


/*
 只能被类遵守的协议
 */
@objc protocol Runnable{}
protocol Runnable1:AnyObject{}
protocol Runnable2:class{}

/*
 实现一个可选协议
 */
@objc protocol Runnable4 {
    @objc optional func run()
    func run1()
}

/*
 被@objc dynamic 修饰的内容会具有动态性，比如调用方法会走runtime那一套流程
 */

/*
 Swift支持KVC/KVO的条件
 1.属性所在的类，监听器最终继承自NSObject
 2.用@objc dynamic 修饰对应的属性
 */

class Observer:NSObject {
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        print("observeValue",change?[.newKey] as Any)
    }
}
class Person1: NSObject {
    @objc dynamic var age:Int = 0
    var observer:NSKeyValueObservation?
    override init() {
        super.init()
        observer = observe(\Person1.age,options:.new) {
            (person,change) in
            print(change.newValue as Any)
        }
    }
    
}
var p1 = Person1()
p1.age = 20
p1.setValue(21,forKey:"age")
