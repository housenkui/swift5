//
//  main.swift
//  泛型
//
//  Created by 侯森魁 on 2020/3/29.
//  Copyright © 2020 侯森魁. All rights reserved.
//

/*
 泛型可以将类型参数化，提高代码复用率，减少代码量
 */


func swapValue<T>(_ a:inout T,_ b:inout T) {
    (a,b) = (b,a)
}

var n1 = 10
var n2 = 20
swapValue(&n1, &n2)

//var d1 = 10.0
//var d2 = 20.15
//swapValue(&d1, &d2)
var fn:(inout Int,inout Int) -> () = swapValue
fn(&n1, &n2)

/*
 泛型函数赋值给变量
 */
func test<T1,T2>(_t1:T1,_t2:T2) {
    
}
var fn1:(Int,Double) -> () = test
