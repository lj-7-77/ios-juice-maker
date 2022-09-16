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
    let stockModifyViewController = StockModifyViewController()
    
    func updateStockLabel() {
        stockOfStrawberryLabel.text = "\(juiceMaker.fruitStore.stock.strawberry)"
        stockOfBananaLabel.text = "\(juiceMaker.fruitStore.stock.banana)"
        stockOfPineappleLabel.text = "\(juiceMaker.fruitStore.stock.pineapple)"
        stockOfKiwiLabel.text = "\(juiceMaker.fruitStore.stock.kiwi)"
        stockOfMangoLabel.text = "\(juiceMaker.fruitStore.stock.mango)"
    }
    
    func letsMakeJuice(menu: String, selectedMenu: Array<String>){
        let recipe = Recipe.init(menu: menu) //레시피대로 과일별 필요수량 셋팅
        let boolJuice: Bool = juiceMaker.orderJuice(selectedMenu: selectedMenu, recipe: recipe)
        showAlert(nameOfJuice: menu, boolJuice: boolJuice) //제조결과에 따라 성공/실패alert 띄움
        letsMakeAlert(boolJuice: boolJuice, nameOfJuice: menu)
        updateStockLabel()
    } //orderJuice 레시피대로 필요한 과일 배열 가져오기(과일재고 체크목적), boolJuice 제조 가능/불가능 결정
    
//    func letsMakeAlert(boolJuice: Bool, nameOfJuice: String){
//        let alertManager = AlertManager.init(boolJuice: boolJuice,
//                                              title: "제조 완료",
//                                              message: "쥬스 나왔습니다! 맛있게 드세요!",
//                                              nameOfJuice: nameOfJuice,
//                                              actionTitle: "OK",
//                                              style: .default)
//    }
    
    func changeViewAndTossValue() {             //값을 넘겨줌, modal방식으로 화면전환
        guard let stockModifyViewController = self.storyboard?.instantiateViewController(
            withIdentifier: "StockModifyViewController")
                as? StockModifyViewController else {
            return
        }
        
        //기능분리  타입캐스팅, 값넘김
        stockModifyViewController.manageStockOfStrawberry = self.juiceMaker.fruitStore.stock.strawberry
        stockModifyViewController.manageStockOfBanana = self.juiceMaker.fruitStore.stock.banana
        stockModifyViewController.manageStockOfPineapple = self.juiceMaker.fruitStore.stock.pineapple
        stockModifyViewController.manageStockOfKiwi = self.juiceMaker.fruitStore.stock.kiwi
        stockModifyViewController.manageStockOfMango = self.juiceMaker.fruitStore.stock.mango
        
       //self.navigationController?.pushViewController(stockModifyViewController, animated: true)
       self.present(stockModifyViewController, animated: true)
    }
    
    func makeSuccessAlert(nameOfJuice: String) -> UIAlertController { //주스제조 성공할 경우의 alert
        
        let successAlert = UIAlertController(title: "제조 완료",
                                             message: "\(nameOfJuice) 쥬스 나왔습니다! 맛있게 드세요!",
                                             preferredStyle: UIAlertController.Style.alert)
        let successAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        successAlert.addAction(successAction)
        
        return successAlert
    }
    
    func makeFailAlert() -> UIAlertController {  //주스제조 실패할 경우의 alert
        let failAlert = UIAlertController(title: "제조 불가",
                                          message: "재료가 모자라요. 재고를 수정할까요?",
                                          preferredStyle: UIAlertController.Style.alert)
        let failAction = UIAlertAction(title: "주문 취소", style: .cancel , handler: nil)
        let stockManageAction = UIAlertAction(title: "재고 수정", style: .default) { UIAlertAction in
            self.changeViewAndTossValue()
        }
        failAlert.addAction(failAction)
        failAlert.addAction(stockManageAction)
        
        return failAlert
    }
    
    func showAlert(nameOfJuice: String, boolJuice: Bool) {      //alert present 함수
        if boolJuice == true {
            present(makeSuccessAlert(nameOfJuice: nameOfJuice), animated: true)
        } else {
            present(makeFailAlert(), animated: true)
        }
    }
    
    @IBAction func stockModifyButton(_ sender: UIButton) {
        changeViewAndTossValue()
    }
    @IBAction func strawberryBananaJuiceButton(_ sender: UIButton) {
        letsMakeJuice(menu: "딸기바나나", selectedMenu: recipe.strawberryBananaJuice)
    }
    @IBAction func mangoKiwiJuiceButton(_ sender: UIButton) {
        letsMakeJuice(menu: "망고키위", selectedMenu: recipe.mangoKiwiJuice)
    }
    @IBAction func strawberryJuiceButton(_ sender: UIButton) {
        letsMakeJuice(menu: "딸기", selectedMenu: recipe.strawberryJuice)
    }
    @IBAction func bananaJuiceButton(_ sender: UIButton) {
        letsMakeJuice(menu: "바나나", selectedMenu: recipe.bananaJuice)
    }
    @IBAction func pineappleJuiceButton(_ sender: UIButton) {
        letsMakeJuice(menu: "파인애플", selectedMenu: recipe.pineappleJuice)
    }
    @IBAction func kiwiJuiceButton(_ sender: UIButton) {
        letsMakeJuice(menu: "키위", selectedMenu: recipe.kiwiJuice)
    }
    @IBAction func mangoJuiceButton(_ sender: UIButton) {
        letsMakeJuice(menu: "망고", selectedMenu: recipe.mangoJuice)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateStockLabel()
    }
}
