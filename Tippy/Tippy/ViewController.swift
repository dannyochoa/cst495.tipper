//
//  ViewController.swift
//  Tippy
//
//  Created by Daniel  Ochoa Aguila on 1/23/19.
//  Copyright © 2019 Daniel  Ochoa Aguila. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!

    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        billField.becomeFirstResponder()
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        let defaults = UserDefaults.standard
    
        tipControl.selectedSegmentIndex = defaults.integer(forKey: "segmentIndex")
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //get the bill amount
        let bill = Double(billField.text!) ?? 0 // ! = optional
                                                // ?? if anything to the left of the ?? is invalid then count it as 0
        //calculate the tip amount
        let tipPercentages = [0.15,0.18,0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //update the tip total label
        tipLabel.text = String(format: "$%.2f ",tip) // \() variable in double parenthesis
        totalLabel.text = String(format: "$%.2f", total)
    }
}

