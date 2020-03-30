//
//  main.swift
//  多态的实现原理
//
//  Created by 侯森魁 on 2020/3/28.
//  Copyright © 2020 侯森魁. All rights reserved.
//

/*
 多态的实现原理:
 1.OC:Runtime
 2.C++:虚表
 
 Swift中的多态的实现原理和C++相似.
 
 //struct不支持继承，可以通过简单的汇编就能看清楚，它在编译完成就已经确定了函数调用的地址
 //而class支持继承，函数的地址 是不确定的.
 */

//struct Animal {
//    func speak() {
//        print("Animal speak");
//    }
//    func eat(){
//        print("Animal eat")
//    }
//    func sleep() {
//        print("Animal sleep");
//    }
//
//}
class Animal {
    func speak() {
        print("Animal speak");
    }
    func eat(){
        print("Animal eat")
    }
    func sleep() {
        print("Animal sleep");
    }
}

class Dog: Animal {

    override func eat() {
        print("Dog eat");
    }
    override func speak() {
        print("Dog speak");
    }
    func run()  {
         print("Dog run");
    }
}
//堆空间内存的前八个字节
//moveq 0xd31a(%rip),%rax 指令 :取出内存中堆空间的rip八个字节给rax
//moveq (%rax),%rcx 指令 :取出内存中堆空间的rax八个字节给rcx
//%rcx 放的是Dog对象的前八个字节
/*
 对象的前八个字节 放的是类型信息，类似于OC的isa
 类型信息前一段区域存储的是什么？？
 
 类型信息后一段区域包含了方法列表
 之后放是引用计数
 然后是成员变量
 */

var animal:Animal;

animal = Animal()
animal.speak()
animal.eat()
animal.sleep()

animal = Dog()
animal.speak()
animal.eat()
animal.sleep()
//animal.run()


