//
//  JuiceMaker - JuiceMaker.swift
//  Created by LJ.
//  Copyright © yagom academy. All rights reserved.
// 

import Foundation

struct JuiceMaker {
    
    var fruitStore: FruitStore = FruitStore()           //과일저장소를 소유
    
    func orderJuice(selectedMenu: Array<String>, recipe: Recipe) {                        //주스 주문
        let check: Bool = fruitStore.checkStock(selectedMenu: selectedMenu, recipe: recipe) //재고확인
        if check == true {
            makingJuice(selectedMenu: selectedMenu, recipe: recipe) //주스제조
        }
        printResultOfMakingJuice(result: check) //제조결과(성공/실패) 출력
                print("\n수정 후 재고")
                print("딸기 ",fruitStore.stockOfStrawberry)
                print("바나나: ",fruitStore.stockOfBanana)
                print("파인애플: ",fruitStore.stockOfPineapple)
                print("키위: ",fruitStore.stockOfKiwi)
                print("망고: ",fruitStore.stockOfMango)
    }
    
    func makingJuice(selectedMenu: Array<String>, recipe: Recipe) {                         //주스제조
        fruitStore.changeStock(selectedMenu: selectedMenu, recipe: recipe) //과일사용->재고수정
    }

    func printResultOfMakingJuice(result: Bool) {                                //제조결과 출력
        if result {
            print("맛있는 주스 완성!")
            return
        }
        print("재고소진으로 제조가 불가합니다.")
    }
}
