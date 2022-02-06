//
//  Item.swift
//  eggplant-brownie
//
//  Created by Yuri Alves de Almeida on 05/02/22.
//

import UIKit

class Item: NSObject {
    var name: String
    var calories: Double

    init(name: String, calories: Double = 0) {
        self.name = name
        self.calories = calories
    }
}
