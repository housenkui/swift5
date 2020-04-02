//
//  Asyncs.swift
//  多线程异步01
//
//  Created by 侯森魁 on 2020/4/1.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

public typealias Task = ()->Void

public struct Asyncs {
    public static func async(_ task:@escaping Task) {
         _async(task)
    }
    public static func async(_ task:@escaping Task, _ mainTask:Task? = nil) {
        _async(task, mainTask)
    }
    private static func _async(_ task:@escaping Task, _ mainTask:Task? = nil) {
        let item = DispatchWorkItem(block: task)
        DispatchQueue.global().async(execute: item)
        if let main = mainTask {
            item.notify(queue: DispatchQueue.main,execute: main)
        }
        
    }
    
    //如果没有用到返回值，也可以忽略警告
    @discardableResult
    public static func mainDelay(_ second:Double,_ block:@escaping Task) ->DispatchWorkItem {
        let item = DispatchWorkItem(block: block)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + second, execute: item)
        return item //返回item方便取消操作
    }
    
    @discardableResult
    public static func asyncDelay (_ second:Double,_ task:@escaping Task)->DispatchWorkItem {
        return _asyncDelay(second, task)
    }
    
    @discardableResult
    public static func asyncDelay (_ second:Double,_ task:@escaping Task,_ mainTask:Task? = nil)->DispatchWorkItem{
        return _asyncDelay(second, task, mainTask)
    }
    
    private static func _asyncDelay(_ second:Double,_ task:@escaping Task,_ mainTask:Task? = nil) ->DispatchWorkItem{
        let item = DispatchWorkItem(block: task)
        DispatchQueue.global().asyncAfter(deadline: DispatchTime.now() + second, execute: item)
        if let main = mainTask {
            item.notify(queue: DispatchQueue.main, execute: main)
        }
        return item
    }
}
