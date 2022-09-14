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
    
    @IBAction func closeButton(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
        self.presentingViewController?.dismiss(animated: true,completion: nil)
    }
    
    @IBAction func strawberryStepper(_ sender: UIStepper) {
        //manageStockOfStrawberryLabel.text = "\(manageStockOfStrawberry+Int(sender.value))"
            
    }
    @IBAction func bananaStepper(_ sender: UIStepper) {
        //manageStockOfBananaLabel.text = "\(manageStockOfBanana+Int(sender.value))"
    }
    @IBAction func pineappleStepper(_ sender: UIStepper) {
        //manageStockOfPineappleLabel.text = "\(manageStockOfPineapple+Int(sender.value))"
    }
    @IBAction func kiwiStepper(_ sender: UIStepper) {
        //manageStockOfKiwiLabel.text = "\(manageStockOfKiwi+Int(sender.value))"
    }
    @IBAction func mangoStepper(_ sender: UIStepper) {
        //manageStockOfMangoLabel.text = "\(manageStockOfMango+Int(sender.value))"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        manageStockOfStrawberryLabel.text = "\(manageStockOfStrawberry ?? 999)"
        manageStockOfBananaLabel.text = "\(manageStockOfBanana ?? 999)"
        manageStockOfPineappleLabel.text = "\(manageStockOfPineapple ?? 999)"
        manageStockOfKiwiLabel.text = "\(manageStockOfKiwi ?? 999)"
        manageStockOfMangoLabel.text = "\(manageStockOfMango ?? 999)"
        
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
