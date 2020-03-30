//
//  main.swift
//  元类型的应用
//
//  Created by 侯森魁 on 2020/3/29.
//  Copyright © 2020 侯森魁. All rights reserved.
//

class Animal {
    required init() {
        
    }
}
class Cat:Animal {
    
}
class Dog: Animal {
    
}
class Pig: Animal {
    
}

func create(_ clses:[Animal.Type]) -> [Animal] {
    var arr = [Animal]()
    for cls in clses {
        arr.append(cls.init())
    }
    return arr
}

let arr:[Animal] = create([Cat.self,Dog.self,Pig.self])
print(arr)




