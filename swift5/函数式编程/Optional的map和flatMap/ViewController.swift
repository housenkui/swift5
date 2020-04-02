//
//  ViewController.swift
//  Optional的map和flatMap
//
//  Created by 侯森魁 on 2020/4/1.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var num1:Int? = 10
        var num2 = num1.map{$0 * 2}
        
        print(num2)
        
        var num3:Int? = nil
        
        var num4 = num3.map{$0 * 2}
        print(num4)
        
        var num5 = (num1 != nil) ? (num1! + 10):nil
        var num6 = num1.map{$0 + 10}
        //num5和num6是等价的
        var fmt = DateFormatter()
        fmt.dateFormat = "YYYY-MM-DD"
        var str:String? = "2020-04-01"
        //old
        var date1 = str != nil ? fmt.date(from: str!):nil
        //new
        var date2 = str.flatMap(fmt.date)
        
        var score:Int? = 98
        //old
        var str1 = score != nil ? "score is \(score!)":"No score"
        //new
        var str2 = score.map{"score is \($0)"} ?? "No score"
        
        print(str1,str2)
    }


}

