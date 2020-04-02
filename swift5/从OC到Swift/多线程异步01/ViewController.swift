//
//  ViewController.swift
//  多线程异步01
//
//  Created by 侯森魁 on 2020/4/1.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var item:DispatchWorkItem?
    static var age:Int = {
        0
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        let _ = Self.age
//        print(Thread.current)
        //GCD 1.0
//        DispatchQueue.global().async {
//            print(Thread.current)
//            DispatchQueue.main.async {
//                print(Thread.current)
//            }
//        }
        //2.0
//        let item = DispatchWorkItem {
//            print("1",Thread.current)
//        }
//        DispatchQueue.global().async(execute: item)
//        item.notify(queue: DispatchQueue.main) {
//            print("2",Thread.current)
//        }
        
        Asyncs.async({
            print("1",Thread.current)
        }) {
            print("2",Thread.current)
        }
        
        item =  Asyncs.mainDelay(3) {
            print("3",Thread.current)
        }
        Asyncs.asyncDelay(2, {
                print("子线程延迟执行",Thread.current)
        }) {
             print("主线程执行",Thread.current)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        item?.cancel()
    }
    
    

}

