//
//  ViewController.swift
//  Prework
//
//  Created by Jasmine Lee on 12/19/21.
//

import UIKit

class ViewController: UIViewController {
    //var means value can change
    var tipPercentages = [15.0, 18.0, 20.0]
    
    //UI elm in view controller
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Sets the title in the Navigation Bar
        self.title = "Tip Calculator"
        
    }

    @IBAction func calculateTip(_ sender: Any) {
        //get bill amt from text field input and if none - checked by ??, let default be 0
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //get total tip by multiplying tip * tipPercentage
        //FIX THIS
        let tip = bill * (tipPercentages[tipControl.selectedSegmentIndex])/100.0
        let total = tip + bill
        
        //update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //update total amount
        totalLabel.text = String(format: "$%.2f", total)
    }


//ex let emptyArray: [String] = [] (: is indicating the type for the elm will follow)
//? following type means it can be innitialized without being defined
    func changeSegmentLabels(percentages : [String?]) {
        if (percentages.count == 3) {
            for (index, percent) in percentages.enumerated(){
                //tipControl is the segmented control
                tipControl.setTitle((percent ?? "0") + "%", forSegmentAt:index)
                //set tipPercentages for computing
                tipPercentages[index] = Double(percentages[index] ?? "0") ?? 0
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dvc = segue.destination as? SettingsViewController {
            dvc.changeTips = changeSegmentLabels
            print("changed default percentages")
        }
    }
}


    
