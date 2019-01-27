//
//  SettingsViewController.swift
//  Tippy
//
//  Created by Daniel  Ochoa Aguila on 1/24/19.
//  Copyright © 2019 Daniel  Ochoa Aguila. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipViewController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func UpdateDefaultPercent(_ sender: Any) {
        print(":gere")
        print(tipViewController.selectedSegmentIndex)
        
        //Access UserDefaults
        let defaults = UserDefaults.standard
        
        // Set a String value for some key.
        defaults.set(tipViewController.selectedSegmentIndex, forKey: "segmentIndex")
        defaults.synchronize()
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
