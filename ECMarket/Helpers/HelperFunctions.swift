//
//  HelperFunctions.swift
//  ECMarket
//
//  Created by MacBook Pro on 2020/07/30.
//  Copyright © 2020 Tsurutadesu. All rights reserved.
//

import Foundation

func convertToCurrency(_ number: Double) -> String{
    let currencyFormatter = NumberFormatter()
    currencyFormatter.usesGroupingSeparator = true
    currencyFormatter.numberStyle = .currencyPlural
    currencyFormatter.locale = Locale(identifier: "ja_JP")

    return currencyFormatter.string(from: NSNumber(value: number))!
}
