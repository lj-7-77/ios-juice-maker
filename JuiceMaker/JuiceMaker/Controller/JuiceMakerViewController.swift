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
    var nameOfJuice: String = ""
    
    @IBAction func stockModifyButton(_ sender: UIButton) {
       
    }
    
    //성공할 경우의 alert
    func makeSuccessAlert(nameOfJuice: String) -> UIAlertController {
        let successAlert = UIAlertController(title: "제조 완료",
                                             message: "\(nameOfJuice)쥬스 나왔습니다! 맛있게 드세요!",
                                             preferredStyle: UIAlertController.Style.alert)
        let successAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        successAlert.addAction(successAction)
        return successAlert
    }
    //실패할 경우의 alert
    func makeFailAlert() -> UIAlertController {
        let failAlert = UIAlertController(title: "제조 불가",
                                          message: "재료가 모자라요. 재고를 수정할까요?",
                                          preferredStyle: UIAlertController.Style.alert)
        let failAction = UIAlertAction(title: "주문 취소", style: .cancel, handler: nil)
        let stockManageAction = UIAlertAction(title: "재고 수정", style: .default) { UIAlertAction in
            guard let stockModifyViewController = self.storyboard?.instantiateViewController(
                withIdentifier: "StockModifyViewController")
                    as? StockModifyViewController else {
                return
            }
            stockModifyViewController.manageStockOfStrawberry = self.juiceMaker.fruitStore.stock.strawberry
            stockModifyViewController.manageStockOfBanana = self.juiceMaker.fruitStore.stock.banana
            stockModifyViewController.manageStockOfPineapple = self.juiceMaker.fruitStore.stock.pineapple
            stockModifyViewController.manageStockOfKiwi = self.juiceMaker.fruitStore.stock.kiwi
            stockModifyViewController.manageStockOfMango = self.juiceMaker.fruitStore.stock.mango

            self.navigationController?.pushViewController(stockModifyViewController, animated: true)
        }
        failAlert.addAction(failAction)
        failAlert.addAction(stockManageAction)
        return failAlert
    }
    //alert present 함수
    func showAlert(nameOfJuice: String, boolJuice: Bool) {
        if boolJuice == true {
            presentAlert(nameOfAlert: makeSuccessAlert(nameOfJuice: nameOfJuice))
        } else {
            presentAlert(nameOfAlert: makeFailAlert())
        }
        updateStockLabel()
    }
    
    func presentAlert(nameOfAlert: UIAlertController) {
        present(nameOfAlert, animated: true)
    }
    
    @IBAction func strawberryBananaJuiceButton(_ sender: UIButton) {
        recipe = Recipe.init(menu: "strawberryBananaJuice")
        selectedMenu = recipe.strawberryBananaJuice
        boolJuice = juiceMaker.orderJuice(selectedMenu: selectedMenu, recipe: recipe)
        showAlert(nameOfJuice: "딸기바나나", boolJuice: boolJuice)

    }
    @IBAction func mangoKiwiJuiceButton(_ sender: UIButton) {
        recipe = Recipe.init(menu: "mangoKiwiJuice")
        selectedMenu = recipe.mangoKiwiJuice
        boolJuice = juiceMaker.orderJuice(selectedMenu: selectedMenu, recipe: recipe)
        showAlert(nameOfJuice: "망고키위", boolJuice: boolJuice)

    }
    @IBAction func strawberryJuiceButton(_ sender: UIButton) {
        recipe = Recipe.init(menu: "strawberryJuice")
        selectedMenu = recipe.strawberryJuice
        boolJuice = juiceMaker.orderJuice(selectedMenu: selectedMenu, recipe: recipe)
        showAlert(nameOfJuice: "딸기", boolJuice: boolJuice)
    }
    @IBAction func bananaJuiceButton(_ sender: UIButton) {
        recipe = Recipe.init(menu: "bananaJuice")
        selectedMenu = recipe.bananaJuice
        boolJuice = juiceMaker.orderJuice(selectedMenu: selectedMenu, recipe: recipe)
        showAlert(nameOfJuice: "바나나", boolJuice: boolJuice)
    }
    @IBAction func pineappleJuiceButton(_ sender: UIButton) {
        recipe = Recipe.init(menu: "pineappleJuice")
        selectedMenu = recipe.pineappleJuice
        boolJuice = juiceMaker.orderJuice(selectedMenu: selectedMenu, recipe: recipe)
        showAlert(nameOfJuice: "파인애플", boolJuice: boolJuice)
    }
    @IBAction func kiwiJuiceButton(_ sender: UIButton) {
        recipe = Recipe.init(menu: "kiwiJuice")
        selectedMenu = recipe.kiwiJuice
        boolJuice = juiceMaker.orderJuice(selectedMenu: selectedMenu, recipe: recipe)
        showAlert(nameOfJuice: "키위", boolJuice: boolJuice)
    }
    @IBAction func mangoJuiceButton(_ sender: UIButton) {
        recipe = Recipe.init(menu: "mangoJuice")
        selectedMenu = recipe.mangoJuice
        boolJuice = juiceMaker.orderJuice(selectedMenu: selectedMenu, recipe: recipe)
        showAlert(nameOfJuice: "망고", boolJuice: boolJuice)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateStockLabel()
    }
   
    func updateStockLabel() {
        stockOfStrawberryLabel.text = "\(juiceMaker.fruitStore.stock.strawberry)"
        stockOfBananaLabel.text = "\(juiceMaker.fruitStore.stock.banana)"
        stockOfPineappleLabel.text = "\(juiceMaker.fruitStore.stock.pineapple)"
        stockOfKiwiLabel.text = "\(juiceMaker.fruitStore.stock.kiwi)"
        stockOfMangoLabel.text = "\(juiceMaker.fruitStore.stock.mango)"
    }
}
