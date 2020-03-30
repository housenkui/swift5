//
//  main.swift
//  CaseIterable
//
//  Created by 侯森魁 on 2020/3/28.
//  Copyright © 2020 侯森魁. All rights reserved.
//

enum Season:CaseIterable {
    case spring,summer,autumn,winter
}
let seasons = Season.allCases
//等价于
//let seasons = [Season.spring,Season.summer,....]

print(seasons.count)

for season in seasons {
    print(season)
}
