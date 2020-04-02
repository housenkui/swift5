//
//  Cache.swift
//  多线程lock
//
//  Created by 侯森魁 on 2020/4/1.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation
public struct Cache {
    private static var data = [String:Any]()
    private static var data1 = [String:Any]()
    private static var data2 = [String:Any]()

    private static var lock = DispatchSemaphore(value: 1)//只允许一条线程访问
    private static var lock1 = NSLock()
    
    private static var lock2 = NSRecursiveLock() //如果存在递归调用需要用到递归锁

    
    public static func get(_ key:String)->Any?{
        data[key]
    }
    public static func set(_ key:String,_ value:Any) {
        lock.wait()
        defer {
            lock.signal()
        }
        data[key] = value
    }
    
    
    public static func get1(_ key:String)->Any?{
        data1[key]
    }
    public static func set1(_ key:String,_ value:Any) {
        lock1.lock()
        defer {
            lock1.unlock()
        }
        data1[key] = value
    }
    
    public static func get2(_ key:String)->Any?{
           data2[key]
       }
       public static func set2(_ key:String,_ value:Any) {
           lock2.lock()
           defer {
               lock2.unlock()
           }
           data2[key] = value
           set2(key, value)
       }
}
