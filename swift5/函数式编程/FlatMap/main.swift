//
//  main.swift
//  FlatMap
//
//  Created by 侯森魁 on 2020/4/1.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

struct Person {
    var name:String
    var age: Int
    init?(_ json:[String:Any]) {
        guard let name = json["name"] as? String,
        let age = json["age"] as? Int else {
            return nil
        }
        self.name = name
        self.age = age
    }
}
var json:Dictionary? = ["name":"Jack","age":10]

//old
var p1 = json != nil ? Person(json!):nil

//new
var p2 = json.flatMap(Person.init)!

print(p2)

