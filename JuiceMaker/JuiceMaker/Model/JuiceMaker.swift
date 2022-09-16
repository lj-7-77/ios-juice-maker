//
//  JuiceMaker - JuiceMaker.swift
//  Created by LJ.
//  Copyright © yagom academy. All rights reserved.
// 

import Foundation
import UIKit

struct JuiceMaker {
    
    var fruitStore: FruitStore = FruitStore()           //과일저장소를 소유
    
    func orderJuice(selectedMenu: [String:Int]) -> Bool {           //주스 주문
        let stockCheckResult: Bool = fruitStore.checkStock(selectedMenu: selectedMenu) //재고확인
        //if stockCheckResult == true {
            //makingJuice(selectedMenu: selectedMenu, recipe: recipe) //주스제조
//            return true
//        }
        return false
    }
    
//    func makingJuice(selectedMenu:[String:Int], recipe: Recipe) {                    //주스제조
//        fruitStore.changeStock(selectedMenu: selectedMenu, recipe: recipe) //과일사용->재고수정
//    }
}
