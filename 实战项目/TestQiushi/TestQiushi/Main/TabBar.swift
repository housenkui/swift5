//
//  TabBar.swift
//  TestQiushi
//
//  Created by 侯森魁 on 2020/4/2.
//  Copyright © 2020 侯森魁. All rights reserved.
//

import UIKit

class TabBar: UITabBar {
    override func layoutSubviews() {
        super.layoutSubviews()
        
        for button in subviews where button is UIControl {
            var frame = button.frame
            frame.origin.y = -2
            button.frame = frame
        }
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
