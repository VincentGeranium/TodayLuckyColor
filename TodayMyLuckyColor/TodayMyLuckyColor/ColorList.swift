//
//  ColorList.swift
//  TodayMyLuckyColor
//
//  Created by 김광준 on 2019/10/14.
//  Copyright © 2019 VincentGeranium. All rights reserved.
//

import Foundation
import UIKit


typealias ColorTuple = (colorName: UIColor, colorNumber: Int)

struct ColorList {
    static let greenColor: ColorTuple = (.green, 1)
    static let redColor: ColorTuple = (.red, 2)
    static let orangeColor: ColorTuple = (#colorLiteral(red: 1, green: 0.5746383667, blue: 0, alpha: 1), 3)
}
