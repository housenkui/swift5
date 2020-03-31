//
//  ViewController.swift
//  资源名管理1
//
//  Created by 侯森魁 on 2020/3/31.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import UIKit
enum R {
    enum image {
        static var logo =  UIImage(named: "logo")
    }
    enum font {
        static func arial(_ size: CGFloat) -> UIFont? {
            UIFont(name: "Arial", size: size)
        }
    }
}
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImage(named: "logo")
        
        let font =  UIFont(name: "Arial", size: 14)

        
        let image1 = R.image.logo
        let font1 = R.font.arial(14)
        
    }


}

