//
//  Recipe.swift
//  JuiceMaker
//
//  Created by LJ on 2022/09/10.
//

import Foundation

class Recipe {
    
    let strawberryJuice: Array<String> = ["requiredStrawberry"]
    let bananaJuice: Array<String> = ["requiredBanana"]
    let pineappleJuice: Array<String> = ["requiredPineapple"]
    let kiwiJuice: Array<String> = ["requiredKiwi"]
    let mangoJuice: Array<String> = ["requiredMango"]
    let strawberryBananaJuice: Array<String> = ["requiredStrawberry","requiredBanana"]
    let mangoKiwiJuice: Array<String> = ["requiredMango","requiredKiwi"]
    
    var requiredStrawberry: Int
    var requiredBanana: Int
    var requiredPineapple: Int
    var requiredKiwi: Int
    var requiredMango: Int
    
    init(menu: String) {
        switch menu {
        case "딸기":
            requiredStrawberry = 16
            requiredBanana = 0
            requiredPineapple = 0
            requiredKiwi = 0
            requiredMango = 0
        case "바나나":
            requiredStrawberry = 0
            requiredBanana = 2
            requiredPineapple = 0
            requiredKiwi = 0
            requiredMango = 0
        case "파인애플":
            requiredStrawberry = 0
            requiredBanana = 0
            requiredPineapple = 2
            requiredKiwi = 0
            requiredMango = 0
        case "키위":
            requiredStrawberry = 0
            requiredBanana = 0
            requiredPineapple = 0
            requiredKiwi = 3
            requiredMango = 0
        case "망고":
            requiredStrawberry = 0
            requiredBanana = 0
            requiredPineapple = 0
            requiredKiwi = 0
            requiredMango = 3
        case "딸기바나나":
            requiredStrawberry = 10
            requiredBanana = 1
            requiredPineapple = 0
            requiredKiwi = 0
            requiredMango = 0
        case "망고키위":
            requiredStrawberry = 0
            requiredBanana = 0
            requiredPineapple = 0
            requiredKiwi = 1
            requiredMango = 2
        default:
            requiredStrawberry = 0
            requiredBanana = 0
            requiredPineapple = 0
            requiredKiwi = 0
            requiredMango = 0
        }
    }
}
