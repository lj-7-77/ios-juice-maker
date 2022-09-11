//
//  JuiceMaker - ViewController.swift
//  Created by LJ.
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {

    
    @IBAction func stockModify(_ sender: UIBarButtonItem) {
    }
    
    @IBOutlet weak var stockOfStrawberryLabel: UILabel!
    @IBOutlet weak var stockOfBananaLabel: UILabel!
    @IBOutlet weak var stockOfPineappleLabel: UILabel!
    @IBOutlet weak var stockOfKiwiLabel: UILabel!
    @IBOutlet weak var stockOfMangoLabel: UILabel!
    
    @IBAction func strawberryBananaJuiceButton(_ sender: UIButton) {
    }
    @IBAction func mangoKiwiJuiceButton(_ sender: UIButton) {
    }
    @IBAction func strawberryJuiceButton(_ sender: UIButton) {
    }
    @IBAction func bananaJuiceButton(_ sender: UIButton) {
    }
    @IBAction func pineappleJuiceButton(_ sender: UIButton) {
    }
    @IBAction func kiwiJuiceButton(_ sender: UIButton) {
    }
    @IBAction func mangoJuiceButton(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let juiceMaker = JuiceMaker()
        
        print("\n딸기바나나 주문")
        var recipe: Recipe = Recipe.init(menu: "strawberryBananaJuice")
        var selectedMenu: Array<String> = recipe.strawberryBananaJuice
        
        juiceMaker.orderJuice(selectedMenu: selectedMenu, recipe: recipe)
        
        print("\n망고키위주스 주문")
        recipe = Recipe.init(menu: "mangoKiwiJuice")
        selectedMenu = recipe.mangoKiwiJuice
        juiceMaker.orderJuice(selectedMenu: selectedMenu, recipe: recipe)

        print("\n망고주스 주문")
        recipe = Recipe.init(menu: "mangoJuice")
        selectedMenu = recipe.mangoJuice
        juiceMaker.orderJuice(selectedMenu: selectedMenu, recipe: recipe)
        
        print("\n딸기주스 주문")
        recipe = Recipe.init(menu: "strawberryJuice")
        selectedMenu = recipe.strawberryJuice
        juiceMaker.orderJuice(selectedMenu: selectedMenu, recipe: recipe)
    }
}


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

