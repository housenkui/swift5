//
//  main.swift
//  循环引用
//
//  Created by 侯森魁 on 2020/3/30.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation
/*
 weak/unowned 都能解决循环引用的问题，unowned要比weak少一些性能消耗
 
 在生命周期中可能会变为nil的使用weak
 
 初始化赋值后再也不会变为nil的使用unowned
 */

/*
 闭包的循环引用
 闭包表达式默认会对用到的外层对象产生额外的强引用(对外层对象进行了retain操作)
 下面代码会产生循环引用，导致Person对象无法释放(看不到Person的deinit被调用)
 */
class Person {
    var fn:((Int)->())?
    func run () {
        print("run")
    }
    deinit {
        print("Person deinit")
    }
}

func test() {
    let p = Person()
    let p1 = Person()
    let p2 = Person()
    p.fn = { [weak p] (age) in
           p?.run()
       }
    p1.fn = { [unowned p] (age) in
        p.run()
    }
    p2.fn = {
        [weak wp = p,unowned up = p,a = 10 + 20 ] (age) in
        wp?.run()
        
    }
}
test()

/*
 如果想在定义闭包属性的同时引用self,这个闭包必须是lazy的，（因为在实例初始化完毕之后才能引用self）
 */
class Person1 {
    lazy var fn:(()->()) = {
        [weak p = self] in
        p?.run()
    }
    func run () {
        print("run")
    }
    deinit {
        print("Person1 deinit")
    }
}
func test1(){
    var p1 = Person1()
    p1.fn()
}
test1()
