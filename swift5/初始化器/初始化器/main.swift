//
//  main.swift
//  初始化器
//
//  Created by 侯森魁 on 2020/3/28.
//  Copyright © 2020 侯森魁. All rights reserved.
//
/*
 类、结构体、枚举都可以定义初始化器
 类有两种初始化器：指定初始化器(designated initializer)、便捷初始化器(convenience initializer)
 每个类至少有一个指定初始化器，指定初始化器是类的主要初始化器.
 
 默认初始化器总是类的指定初始化器
 类偏向于少量指定初始化器，一个类通常只有一个指定初始化器
 
 初始化器的设计很大的方面是:出于安全的考虑,对象的属性在使用之前必须赋值.
 
 初始化器的相互调用规则
 
 便捷初始化器最终必须调用一个指定初始化器
 */
class Size {
    var width:Int = 0
    var height:Int = 0
    
    //指定初始化器 (主要初始化器)
    init(width:Int,height:Int) {
        self.width = width
        self.height = height
    }

    
    convenience init(width:Int) {
        self.init(width:width,height:0)
       
    }
    convenience init(height:Int) {
        self.init(width:0,height:height)
    }
    
    convenience init() {
        self.init(width:0,height:0);
    }
    //符合builder设计模式，用来创建复杂对象，可以有一个基础方法，后续想要添加属性可以再直接调用
   class func builder(width:Int) -> Size {
        let size =  Size(width: 10)
        return size;
    }

}
var s = Size(width: 10)
var s2 = Size.builder(width: 10)

class Person {
    var age:Int
    var name:String
    
    init(age:Int,name:String) {
        self.age = age
        self.name = name
    }
    init() {
        self.age = 0
        self.name = ""
    }
    convenience init(age:Int) {
        self.init(age: age,name: "")
    }
    convenience init(name:String) {
        self.init(age:0,name:name)
    }
   
}

class Student: Person {
    var score:Int
    
    //子类的指定初始化器一定要调用父类的 指定初始化器 确保安全
    init(age:Int,score:Int) {
        self.score = score;
        super.init(age: age,name:"")
         self.age = 10
        
         self.abc()
       
    }
    func abc() -> Void
    {
        
    }
//    init(){
//        self.score = 0;
//        super.init(age:0)
//    }
    
    
}

/*
 两段式初始化
 第一阶段：初始化所有存储属性
 1.外层调用指定、便捷初始化器
 2.分配内存给实例，但未初始化
 3.指定初始化器确保当前类定义的存储属性都初始化
 4.指定初始化器调用父类的初始化器，不断向上调用，形成初始化器链
 
 第二阶段：设置新的存储属性
 1.从顶部初始化器往下，链中的每一个指定初始化器都有机会进一步定制实例
 2.初始化器现在能够使用self(访问、修改它的属性、调用它的实例方法等等)
 3.最终、链中任何便捷初始化器都有机会定制实例以及使用self
 */

/*
 安全检查:
 1.指定初始化器必须保证在调用父类初始化器之前，其所在类定义的所有存储属性都有初始化完成
 2.指定初始化器必须先调用父类初始化器，然后才能为继承的属性设置新值
 3.便捷初始化器必须先调用同类中的其他初始化器，然后再为任意属性设置新值
 4.初始化在第一阶段初始化完成之前，不能调用任何实例方法，不能读取任何实例属性的值，也不能引用self
 5.一直到第一阶段结束，实例才算完全合法
 */


/*
重写
1.当重写父类的指定初始化器时，必须加上override(即使子类的实现是便捷初始化器)
2.因为父类的便捷初始化器永远不会通过子类直接调用，因此，严格来说，子类无法重写父类的便捷初始化器
 
 */

/*
 自动继承
 
 1.如果子类没有定义任何指定初始化器，它会自动继承父类所有的指定初始化器
 2.如果子类提供了父类所有指定初始化器的实现(要么通过方式1继承，要么重写)
   a.子类自动继承所有的父类便捷初始化器
 3.就算子类添加了更多的便捷初始化器，这些规则仍然适用
 4.子类以便捷初始化器的形式重写父类的指定初始化器，也可以作为满足规则2的一部分
 */


