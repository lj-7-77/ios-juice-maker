//
//  JuiceMaker - ViewController.swift
//  Created by LJ.
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit

class JuiceMakerViewController: UIViewController {
    
    @IBOutlet weak var stockOfStrawberryLabel: UILabel!
    @IBOutlet weak var stockOfBananaLabel: UILabel!
    @IBOutlet weak var stockOfPineappleLabel: UILabel!
    @IBOutlet weak var stockOfKiwiLabel: UILabel!
    @IBOutlet weak var stockOfMangoLabel: UILabel!
    
    let juiceMaker = JuiceMaker()
    var recipe: Recipe = Recipe(menu: "")
    var selectedMenu: Array<String> = []
    
    @IBAction func stockModifyButton(_ sender: Any) {
    }
    
    @IBAction func strawberryBananaJuiceButton(_ sender: UIButton) {
        recipe = Recipe.init(menu: "strawberryBananaJuice")
        selectedMenu = recipe.strawberryBananaJuice
        juiceMaker.orderJuice(selectedMenu: selectedMenu, recipe: recipe)
    }
    @IBAction func mangoKiwiJuiceButton(_ sender: UIButton) {
        recipe = Recipe.init(menu: "mangoKiwiJuice")
        selectedMenu = recipe.mangoKiwiJuice
        juiceMaker.orderJuice(selectedMenu: selectedMenu, recipe: recipe)
    }
    @IBAction func strawberryJuiceButton(_ sender: UIButton) {
        recipe = Recipe.init(menu: "strawberryJuice")
        selectedMenu = recipe.strawberryJuice
        juiceMaker.orderJuice(selectedMenu: selectedMenu, recipe: recipe)
    }
    @IBAction func bananaJuiceButton(_ sender: UIButton) {
        recipe = Recipe.init(menu: "bananaJuice")
        selectedMenu = recipe.bananaJuice
        juiceMaker.orderJuice(selectedMenu: selectedMenu, recipe: recipe)
    }
    @IBAction func pineappleJuiceButton(_ sender: UIButton) {
        recipe = Recipe.init(menu: "pineappleJuice")
        selectedMenu = recipe.pineappleJuice
        juiceMaker.orderJuice(selectedMenu: selectedMenu, recipe: recipe)
    }
    @IBAction func kiwiJuiceButton(_ sender: UIButton) {
        recipe = Recipe.init(menu: "kiwiJuice")
        selectedMenu = recipe.kiwiJuice
        juiceMaker.orderJuice(selectedMenu: selectedMenu, recipe: recipe)
    }
    @IBAction func mangoJuiceButton(_ sender: UIButton) {
        recipe = Recipe.init(menu: "mangoJuice")
        selectedMenu = recipe.mangoJuice
        juiceMaker.orderJuice(selectedMenu: selectedMenu, recipe: recipe)
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stockOfStrawberryLabel.text = "\(juiceMaker.fruitStore.stockOfStrawberry)"
        stockOfBananaLabel.text = "\(juiceMaker.fruitStore.stockOfBanana)"
        stockOfPineappleLabel.text = "\(juiceMaker.fruitStore.stockOfPineapple)"
        stockOfKiwiLabel.text = "\(juiceMaker.fruitStore.stockOfKiwi)"
        stockOfMangoLabel.text = "\(juiceMaker.fruitStore.stockOfMango)"
        

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

