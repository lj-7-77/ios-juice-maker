//
//  Recipe.swift
//  JuiceMaker
//
//  Created by LJ on 2022/09/10.
//

import Foundation

class Recipe {
    
    var juice: [String : Int]
    init(menu: String) {
        switch menu {
        case "딸기":
            juice = ["strawberry":16]
        case "바나나":
            juice = ["banana":2]
        case "파인애플":
            juice = ["pineapple":2]
        case "키위":
            juice = ["kiwi":3]
        case "망고":
            juice = ["mango":3]
        case "딸기바나나":
            juice = ["strawberry":10, "banana":1]
        case "망고키위":
            juice = ["mango":2, "kiwi":1]
        default:
            juice = [:]
        }
    }
}
