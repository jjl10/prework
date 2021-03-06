//
//  SettingsViewController.swift
//  Prework
//
//  Created by Jasmine Lee on 1/6/22.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipOneTextField: UITextField!
    @IBOutlet weak var tipTwoTextField: UITextField!
    @IBOutlet weak var tipThreeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //type param for changeTips func - input is array of strings and output is nil bc only UI changes
    var changeTips: (([String?]) -> ())?
        
    func pass(dummy_var: [String?]) {
        print("changed tips not yet initialized")
    }
    
    @IBAction func changeTips2(_ sender: UITextField){
        (changeTips ?? pass)([tipOneTextField.text, tipTwoTextField.text, tipThreeTextField.text])
    }
     

}
