//
//  main.swift
//  访问控制
//
//  Created by 侯森魁 on 2020/3/30.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

open class Person {
    
}

public class Person1 {
    
}

internal class Person2 {
    
}

fileprivate class Person3 {
    
}

private class Person4 {
    
}


//class Student: Person {
//    
//}

/*
 在访问权限控制这块，Swift提供了5个不同的访问级别(以下是从高到低排列，实体指被访问级别修饰的内容)
 依照模块和文件控制访问权限
open:允许在定义实体的模块、其他模块中访问，允许其他模块进行继承、重写(open只能用在类、类成员上)
public:允许在定义实体模块、其他模块中访问、不允许其他模块进行继承、重写
internal:只允许在定义实体的模块中访问、不允许在其他模块中访问 (如果放在第三方库Framework中，外界是没有方法进行访问的)
默认级别 internal
fileprivate:只允许在定义实体的源文件中访问
private:只允许在定义实体的封闭声明中访问
 
 */

/*
 变量类型的访问级别 >= 变量的访问级别
 
 1.变量\常量类型 >= 变量\常量
 2.参数类型、返回值类型 >= 函数
 3.父类 >= 子类
 4.父协议 >= 子协议
 5.原类型 >=typealias
 6.原始值类型、关联值类型 >= 枚举类型
 7.定义类型A时用到的其他类型 >= 类型A
 */
fileprivate class Person10 {
    
}
private var p:Person10
