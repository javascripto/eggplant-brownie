//
//  Meal.swift
//  eggplant-brownie
//
//  Created by Yuri Alves de Almeida on 05/02/22.
//

import UIKit

class Meal: NSObject {
    var name: String
    var happiness: Int
    var items: Array<Item> = []
    
    init(name: String, happiness: Int) {
        self.name = name
        self.happiness = happiness
    }
    
    func getTotalCalories() -> Double {
        return items.reduce(0, {
            total, item in total + item.calories
        })
    }
    
    public override var description: String {
       return "{\"name\":\"\(name)\",\"happiness\":\(happiness)}"
   }
}
