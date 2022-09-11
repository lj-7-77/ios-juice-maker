//
//  JuiceMaker - FruitStore.swift
//  Created by LJ.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

class FruitStore {
    
    var stockOfStrawberry: Int
    var stockOfBanana: Int
    var stockOfPineapple: Int
    var stockOfKiwi: Int
    var stockOfMango: Int

    init() {
        stockOfStrawberry = 10
        stockOfBanana = 10
        stockOfPineapple = 10
        stockOfKiwi = 10
        stockOfMango = 10
    }
    

    func checkStock(selectedMenu: Array<String>, recipe: Recipe) -> Bool {              //재고확인
        var resultOfFruitStock: Array<Bool> = []
        selectedMenu.forEach {
            let valueBool: Bool = comparisonOfStockAndOrder(requiredFruit: $0, recipe: recipe)
            resultOfFruitStock.append(valueBool)
        }

        for i in resultOfFruitStock {
            if i == false {
                return false
            }
        }
        return true
    }
    
    func comparisonOfStockAndOrder(requiredFruit: String, recipe: Recipe) -> Bool {     //재고량-필요량 비교
        switch requiredFruit {
        case "requiredStrawberry":
            if stockOfStrawberry >= recipe.requiredStrawberry {
                return true
            }
        case "requiredBanana":
            if stockOfBanana >= recipe.requiredBanana {
                return true
            }
        case "requiredPineapple":
            if stockOfPineapple >= recipe.requiredPineapple {
                return true
            }
        case "requiredKiwi":
            if stockOfKiwi >= recipe.requiredKiwi {
                return true
            }
        case "requiredMango":
            if stockOfMango >= recipe.requiredMango {
                return true
            }
        default:
            return false
        }
        return false
    }
    
    func useStock(selectedMenu: Array<String>, recipe: Recipe) {        //재고차감
        for i in 0..<selectedMenu.count {
            let checkFruit: String = "\(selectedMenu[i])"
            switch checkFruit {
            case "requiredStrawberry":
                stockOfStrawberry -= recipe.requiredStrawberry
            case "requiredBanana":
                stockOfBanana -= recipe.requiredBanana
            case "requiredPineapple":
                stockOfPineapple -= recipe.requiredPineapple
            case "requiredKiwi":
                stockOfKiwi -= recipe.requiredKiwi
            case "requiredMango":
                stockOfMango -= recipe.requiredMango
            default:
                return
            }
        }
    }
}
