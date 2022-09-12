//
//  StockModifyViewController.swift
//  JuiceMaker
//
//  Created by LJ on 2022/09/11.
//

import UIKit

class StockModifyViewController: UIViewController {

    @IBOutlet weak var manageStockOfStrawberryLabel: UILabel!
    
    @IBOutlet weak var manageStockOfBananaLabel: UILabel!
    @IBOutlet weak var manageStockOfPineappleLabel: UILabel!
    @IBOutlet weak var manageStockOfKiwiLabel: UILabel!
    @IBOutlet weak var manageStockOfMangoLabel: UILabel!
    

    
    @IBAction func closeButton(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true)
    }
    
    var manageStockOfStrawberry: Int = 0
    var manageStockOfBanana: Int = 0
    var manageStockOfPineapple: Int = 0
    var manageStockOfKiwi: Int = 0
    var manageStockOfMango: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        manageStockOfStrawberryLabel.text = "\(manageStockOfStrawberry)"
        manageStockOfBananaLabel.text = "\(manageStockOfBanana)"
        manageStockOfPineappleLabel.text = "\(manageStockOfPineapple)"
        manageStockOfKiwiLabel.text = "\(manageStockOfKiwi)"
        manageStockOfMangoLabel.text = "\(manageStockOfMango)"
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
