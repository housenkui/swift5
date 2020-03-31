//
//  main.swift
//  将方法赋值给var/let
//
//  Created by 侯森魁 on 2020/3/30.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

struct Person {
    var age:Int
    func run(_ v:Int){
        print("func run",age,v)
    }
}

var fn = Person.run
var fn2 =  fn(Person(age: 20))

fn2(20)
