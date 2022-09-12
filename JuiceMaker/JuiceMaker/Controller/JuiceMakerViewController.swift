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
    var boolJuice: Bool = false

    let successAlert = UIAlertController(title: "제조 완료",
                                         message: "딸기바나나쥬스 나왔습니다! 맛있게 드세요!",
                                         preferredStyle: UIAlertController.Style.alert)
    let successAction = UIAlertAction(title: "OK", style: .default, handler: nil)
    
    let failAlert = UIAlertController(title: "제조 불가",
                                      message: "재료가 모자라요. 재고를 수정할까요?",
                                      preferredStyle: UIAlertController.Style.alert)
    let failAction = UIAlertAction(title: "주문 취소", style: .cancel, handler: nil)
    let stockManageAction = UIAlertAction(title: "재고 수정", style: .default, handler: nil)
    
    @IBAction func stockModifyButton(_ sender: Any) {
    }
    
    @IBAction func strawberryBananaJuiceButton(_ sender: UIButton) {
        recipe = Recipe.init(menu: "strawberryBananaJuice")
        selectedMenu = recipe.strawberryBananaJuice
        boolJuice = juiceMaker.orderJuice(selectedMenu: selectedMenu, recipe: recipe)
        checkAlert(boolJuice: boolJuice)
    }
    @IBAction func mangoKiwiJuiceButton(_ sender: UIButton) {
        recipe = Recipe.init(menu: "mangoKiwiJuice")
        selectedMenu = recipe.mangoKiwiJuice
        boolJuice = juiceMaker.orderJuice(selectedMenu: selectedMenu, recipe: recipe)
        checkAlert(boolJuice: boolJuice)
    }
    @IBAction func strawberryJuiceButton(_ sender: UIButton) {
        recipe = Recipe.init(menu: "strawberryJuice")
        selectedMenu = recipe.strawberryJuice
        boolJuice = juiceMaker.orderJuice(selectedMenu: selectedMenu, recipe: recipe)
    }
    @IBAction func bananaJuiceButton(_ sender: UIButton) {
        recipe = Recipe.init(menu: "bananaJuice")
        selectedMenu = recipe.bananaJuice
        boolJuice = juiceMaker.orderJuice(selectedMenu: selectedMenu, recipe: recipe)
    }
    @IBAction func pineappleJuiceButton(_ sender: UIButton) {
        recipe = Recipe.init(menu: "pineappleJuice")
        selectedMenu = recipe.pineappleJuice
        boolJuice = juiceMaker.orderJuice(selectedMenu: selectedMenu, recipe: recipe)
    }
    @IBAction func kiwiJuiceButton(_ sender: UIButton) {
        recipe = Recipe.init(menu: "kiwiJuice")
        selectedMenu = recipe.kiwiJuice
        boolJuice = juiceMaker.orderJuice(selectedMenu: selectedMenu, recipe: recipe)
    }
    @IBAction func mangoJuiceButton(_ sender: UIButton) {
        recipe = Recipe.init(menu: "mangoJuice")
        selectedMenu = recipe.mangoJuice
        boolJuice = juiceMaker.orderJuice(selectedMenu: selectedMenu, recipe: recipe)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stockOfStrawberryLabel.text = "\(juiceMaker.fruitStore.stockOfStrawberry)"
        stockOfBananaLabel.text = "\(juiceMaker.fruitStore.stockOfBanana)"
        stockOfPineappleLabel.text = "\(juiceMaker.fruitStore.stockOfPineapple)"
        stockOfKiwiLabel.text = "\(juiceMaker.fruitStore.stockOfKiwi)"
        stockOfMangoLabel.text = "\(juiceMaker.fruitStore.stockOfMango)"
        
        successAlert.addAction(successAction)
        failAlert.addAction(failAction)
        failAlert.addAction(stockManageAction)

    }
    func checkAlert(boolJuice: Bool){
        if boolJuice ==  true {
            present(successAlert, animated: true)
        } else {
            present(failAlert, animated: true)
        }
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

