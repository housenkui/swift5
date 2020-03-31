//
//  Car.swift
//  Swift调用OC1
//
//  Created by 侯森魁 on 2020/3/31.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Cocoa
protocol Runnable {
    func run()
}
//Swift暴露给OC的调用 
@objcMembers class Car: NSObject,Runnable {
    @objc func drive () -> Void  {
        print("drive")
    }
    func run(){
        print("run")
    }
}

extension Car{
    
    func fly() -> Void {
        print("fly")
    }
}
