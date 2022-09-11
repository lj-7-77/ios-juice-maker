//
//  JuiceMaker - ViewController.swift
//  Created by LJ.
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let juiceMaker = JuiceMaker()
        
        print("\n딸기바나나 주문")
        let recipe: Recipe = Recipe.init(menu: "strawberryBananaJuice")
        let selectedMenu: Array<String> = recipe.strawberryBananaJuice
        
        juiceMaker.orderJuice(selectedMenu: selectedMenu, recipe: recipe)
        
//        print("\n망고키위주스 주문")
//        selectedMenu = recipe.mangoKiwiJuice
//        juiceMaker.orderJuice(selectedMenu: selectedMenu)
//
//        print("\n망고주스 주문")
//        selectedMenu = recipe.mangoJuice
//        juiceMaker.orderJuice(selectedMenu: selectedMenu)
    }
}

//        print("\n딸기주스 주문")
//        var selectedMenu: Array<String> = recipe.strawberryJuice
//        juiceMaker.orderJuice(selectedMenu: selectedMenu)
//
//        print("\n바나나주스 주문")
//        selectedMenu = recipe.bananaJuice
//        juiceMaker.orderJuice(selectedMenu: selectedMenu)
//
//        print("\n파인애플주스 주문")
//        selectedMenu = recipe.pineappleJuice
//        juiceMaker.orderJuice(selectedMenu: selectedMenu)
//
//        print("\n키위주스 주문")
//        selectedMenu = recipe.kiwiJuice
//        juiceMaker.orderJuice(selectedMenu: selectedMenu)
//

