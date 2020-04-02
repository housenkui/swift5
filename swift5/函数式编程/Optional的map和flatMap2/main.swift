//
//  main.swift
//  Optional的map和flatMap2
//
//  Created by 侯森魁 on 2020/4/1.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

struct Person {
    var name:String
    var age :Int
}
var items = [
    Person(name: "jack", age: 20),
    Person(name: "jack1", age: 21),
    Person(name: "jack2", age: 22)
]
//old
func getPerson1(_ name:String)-> Person? {
    let index = items.firstIndex{$0.name == name }
    return index != nil ?items[index!] :nil
}
var p = getPerson1("jack")
print(p)
//new
func getPerson2(_ name:String)-> Person? {
    return items.firstIndex{$0.name == name }.map{items[$0]}
}
var p2 = getPerson2("jack")
print(p2)
