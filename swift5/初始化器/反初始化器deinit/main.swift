//
//  main.swift
//  反初始化器deinit
//
//  Created by 侯森魁 on 2020/3/28.
//  Copyright © 2020 侯森魁. All rights reserved.
//

/*
 deinit叫做反初始化器，类似于C++的析构函数，OC的dealloc方法
 当类的实例对象被释放内存时。就会调用实例对象的deinit方法
 */


/*
 deinit不接受任何参数、不能写小括号、不能自行调用
 */

/*
 父类的deinit能被子类继承
 子类的deinit实现执行完毕后会调用父类的deinit
 */
class Person {
    deinit {
        print("Person对象销毁了")
    }
}
class Student: Person {
    deinit {
        print("Student对象销毁了")
    }
}

func test() -> Void {
    var stu = Student()
}

print(1)
test()
print(2)
