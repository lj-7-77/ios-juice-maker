//
//  JuiceMaker - FruitStore.swift
//  Created by LJ.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

class FruitStore {
    
    var stock: stockOfFruit = stockOfFruit()

    func checkStock(selectedMenu: [String:Int]) -> Bool {              //재고확인
        var resultOfFruitStock: Array<Bool> = []
        for (key,_) in selectedMenu {
            if let requiredAmount: Int = selectedMenu[key] { //딕셔너리 값 가져오기
                //재고가 충분히 있는지 확인
                let valueBool: Bool = comparisonOfStockAndOrder(requiredFruit: key,
                                                                requiredAmount: requiredAmount)
                resultOfFruitStock.append(valueBool)
            }
        }

        for i in resultOfFruitStock {
            if i == false {
                return false
            }
        }
        return true
    }
    
    //재고량-필요량 비교(과일1종류)
    func comparisonOfStockAndOrder(requiredFruit: String, requiredAmount: Int) -> Bool {
//        guard requiredFruit == "재고 과일의 이름" else {
//            return false
//        }
//        guard 재고과일수량 >= requiredAmount else {
//            return false
//        }
        return true
    }
    
//        switch requiredFruit {
//        case "requiredStrawberry":
//            if stock.strawberry >= recipe.requiredStrawberry {
//                return true
//            }
//        case "requiredBanana":
//            if stock.banana >= recipe.requiredBanana {
//                return true
//            }
//        case "requiredPineapple":
//            if stock.pineapple >= recipe.requiredPineapple {
//                return true
//            }
//        case "requiredKiwi":
//            if stock.kiwi >= recipe.requiredKiwi {
//                return true
//            }
//        case "requiredMango":
//            if stock.mango >= recipe.requiredMango {
//                return true
//            }
//        default:
//            return false
//        }

        //    func changeStock(selectedMenu: [String:Int], recipe: Recipe) {        //재고차감(재고수정)
//        for i in 0..<selectedMenu.count {
//            let checkFruit: String = "\(selectedMenu[i])"
//            switch checkFruit {
//            case "requiredStrawberry":
//                stock.strawberry -= recipe.requiredStrawberry
//            case "requiredBanana":
//                stock.banana -= recipe.requiredBanana
//            case "requiredPineapple":
//                stock.pineapple -= recipe.requiredPineapple
//            case "requiredKiwi":
//                stock.kiwi -= recipe.requiredKiwi
//            case "requiredMango":
//                stock.mango -= recipe.requiredMango
//            default:
//                break
//            }
//        }
//    }
}
