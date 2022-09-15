//
//  StockModifyViewController.swift
//  JuiceMaker
//
//  Created by LJ on 2022/09/11.
//

import UIKit

class StockModifyViewController: UIViewController {

    var manageStockOfStrawberry: Int?
    var manageStockOfBanana: Int?
    var manageStockOfPineapple: Int?
    var manageStockOfKiwi: Int?
    var manageStockOfMango: Int?
    
    @IBOutlet weak var manageStockOfStrawberryLabel: UILabel!
    @IBOutlet weak var manageStockOfBananaLabel: UILabel!
    @IBOutlet weak var manageStockOfPineappleLabel: UILabel!
    @IBOutlet weak var manageStockOfKiwiLabel: UILabel!
    @IBOutlet weak var manageStockOfMangoLabel: UILabel!
    
    @IBAction func closeButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true,completion: nil)
    }
    @IBAction func strawberryStepper(_ sender: UIStepper) {
        manageStockOfStrawberryLabel.text = "\((manageStockOfStrawberry ?? 999) + Int(sender.value))"
    }
    @IBAction func bananaStepper(_ sender: UIStepper) {
        manageStockOfBananaLabel.text = "\((manageStockOfBanana ?? 999) + Int(sender.value))"
    }
    @IBAction func pineappleStepper(_ sender: UIStepper) {
        manageStockOfPineappleLabel.text = "\((manageStockOfPineapple ?? 999) + Int(sender.value))"
    }
    @IBAction func kiwiStepper(_ sender: UIStepper) {
        manageStockOfKiwiLabel.text = "\((manageStockOfKiwi ?? 999) + Int(sender.value))"
    }
    @IBAction func mangoStepper(_ sender: UIStepper) {
        manageStockOfMangoLabel.text = "\((manageStockOfMango ?? 999) + Int(sender.value))"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        if let msg = manageStockOfStrawberry {
            manageStockOfStrawberryLabel.text = "\(msg)"
        }
        if let msg = manageStockOfBanana {
            manageStockOfBananaLabel.text = "\(msg)"
        }
        if let msg = manageStockOfPineapple {
            manageStockOfPineappleLabel.text = "\(msg)"
        }
        if let msg = manageStockOfKiwi {
            manageStockOfKiwiLabel.text = "\(msg)"
        }
        if let msg = manageStockOfMango {
            manageStockOfMangoLabel.text = "\(msg)"
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
