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
        case "strawberryJuice":
            requiredStrawberry = 16
            requiredBanana = 0
            requiredPineapple = 0
            requiredKiwi = 0
            requiredMango = 0
        case "bananaJuice":
            requiredStrawberry = 0
            requiredBanana = 2
            requiredPineapple = 0
            requiredKiwi = 0
            requiredMango = 0
        case "pineappleJuice":
            requiredStrawberry = 0
            requiredBanana = 0
            requiredPineapple = 2
            requiredKiwi = 0
            requiredMango = 0
        case "kiwiJuice":
            requiredStrawberry = 0
            requiredBanana = 0
            requiredPineapple = 0
            requiredKiwi = 3
            requiredMango = 0
        case "mangoJuice":
            requiredStrawberry = 0
            requiredBanana = 0
            requiredPineapple = 0
            requiredKiwi = 0
            requiredMango = 3
        case "strawberryBananaJuice":
            requiredStrawberry = 10
            requiredBanana = 1
            requiredPineapple = 0
            requiredKiwi = 0
            requiredMango = 0
        case "mangoKiwiJuice":
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
