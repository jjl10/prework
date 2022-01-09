//
//  ViewController.swift
//  Prework
//
//  Created by Jasmine Lee on 12/19/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Sets the title in the Navigation Bar
        self.title = "Tip Calculator"
        
        // Do any additional setup after loading the view.
    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        print("view will appear")
//        // This is a good place to retrieve the default tip percentage from UserDefaults
//        // and use it to update the tip amount
//        let tipPercentages = [0.15, 0.18, 0.2]
//    }
//
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        print("view did appear")
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        print("view will disappear")
//    }
//
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        print("view did disappear")
//    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //get bill amt from text field input and if none, let default be 0
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //get total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = tip + bill
        
        //update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //update total amount
        totalLabel.text = String(format: "$%.2f", total)
    }
}

