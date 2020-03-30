//
//  main.swift
//  计算属性和存储属性2
//
//  Created by 侯森魁 on 2020/3/29.
//  Copyright © 2020 侯森魁. All rights reserved.
//

class Person {
   
    //1.存储属性
//    var name:String = ""
//    var age:Int = 0
    var mathScore:Double = 0.0
    var chineseScore:Double = 0.0
    //最终成绩，存储属性
    private var score:Double = 0.0
    
    //2.计算属性
    var avarage :Double {
        //如果只有get方法，那么get{}可以省略
        get {
            return (mathScore + chineseScore) * 0.5
        }
        set {
            //监听avarageScore的变化，将值赋给Score
            score = newValue  //这里报EXC_BAD_ACCESS ???
        }
    }
    init() {
        
    }
    
}

var p = Person()
p.avarage = 10.0

print(p.avarage)

