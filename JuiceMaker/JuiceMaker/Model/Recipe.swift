//
//  Recipe.swift
//  JuiceMaker
//
//  Created by LJ on 2022/09/10.
//

import Foundation

class Recipe {
    
    let strawberryJuice: [String : Int] = ["requiredStrawberry":16]
    let bananaJuice: [String : Int] = ["requiredBanana":2]
    let pineappleJuice: [String : Int] = ["requiredPineapple":2]
    let kiwiJuice: [String : Int] = ["requiredKiwi":3]
    let mangoJuice: [String : Int] = ["requiredMango":3]
    let strawberryBananaJuice: [String : Int] = ["requiredStrawberry":10, "requiredBanana":1]
    let mangoKiwiJuice: [String : Int] = ["requiredMango":2, "requiredKiwi":1]
    
    var recipe: [String : Int]
    
    init(menu: String) {
        switch menu {
        case "딸기":
            recipe = strawberryJuice
        case "바나나":
            recipe = bananaJuice
        case "파인애플":
            recipe = pineappleJuice
        case "키위":
            recipe = kiwiJuice
        case "망고":
            recipe = mangoJuice
        case "딸기바나나":
            recipe = strawberryBananaJuice
        case "망고키위":
            recipe = mangoKiwiJuice
        default:
            recipe = [:]
        }
    }
}
