//
//  JuiceMaker - FruitStore.swift
//  Created by LJ.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

class FruitStore {
    
    var stock: stockOfFruit = stockOfFruit()

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
    
    func comparisonOfStockAndOrder(requiredFruit: String, recipe: Recipe) -> Bool { //재고량-필요량 비교(과일1종류)
        switch requiredFruit {
        case "requiredStrawberry":
            if stock.strawberry >= recipe.requiredStrawberry {
                return true
            }
        case "requiredBanana":
            if stock.banana >= recipe.requiredBanana {
                return true
            }
        case "requiredPineapple":
            if stock.pineapple >= recipe.requiredPineapple {
                return true
            }
        case "requiredKiwi":
            if stock.kiwi >= recipe.requiredKiwi {
                return true
            }
        case "requiredMango":
            if stock.mango >= recipe.requiredMango {
                return true
            }
        default:
            return false
        }
        return false
    }
    
    func changeStock(selectedMenu: Array<String>, recipe: Recipe) {        //재고차감(재고수정)
        for i in 0..<selectedMenu.count {
            let checkFruit: String = "\(selectedMenu[i])"
            switch checkFruit {
            case "requiredStrawberry":
                stock.strawberry -= recipe.requiredStrawberry
            case "requiredBanana":
                stock.banana -= recipe.requiredBanana
            case "requiredPineapple":
                stock.pineapple -= recipe.requiredPineapple
            case "requiredKiwi":
                stock.kiwi -= recipe.requiredKiwi
            case "requiredMango":
                stock.mango -= recipe.requiredMango
            default:
                break
            }
        }
    }
}
