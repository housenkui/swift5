//
//  main.swift
//  泛型类型
//
//  Created by 侯森魁 on 2020/3/30.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import Foundation

print("Hello, World!")

/*
 泛型类型的访问级别是 类型的访问级别 已经所有泛型类型参数的访问级别中最低的那个
 */
internal class Car{}
fileprivate class Dog{}
public class Person<T1,T2>{}

//Person<Car、Dog>的w访问级别是fileprivate
fileprivate var p = Person<Car,Dog>()

/*
类型的访问级别会影响成员(属性、方法、初始化器、下标)、嵌套类型的默认访问级别
 
 1.一般情况下，类型为private或者fileprivate,那么成员、嵌套类型也是private或fileprivate
 2.一般情况下，类型为internal或者public,那么成员、嵌套类型默认是internal
 */

/*主要点
 直接在全局作用域下面定义的private等价于fileprivate
 */
private class Person1 {
    
}
fileprivate class Student1:Person1 {
    
}
