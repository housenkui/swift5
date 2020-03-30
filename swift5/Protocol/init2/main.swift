//
//  main.swift
//  init2
//
//  Created by 侯森魁 on 2020/3/28.
//  Copyright © 2020 侯森魁. All rights reserved.
//

/*
协议中定义的init?、init!,可以用init、init? init!去实现
 
 协议中定义的init，可以用init、init!去实现
 */
protocol Livable {
    init()
    init?(age:Int)
    init!(no:Int)
}
class Person: Livable {
    required init(){}
    //required init!(){}
    
    required init?(age:Int){}
    //required init!(age:Int){}
    //required init(age:Int){}
    
    required init!(no:Int){}
    //required init?(no:Int){}
    //required init(no:Int){}

}

