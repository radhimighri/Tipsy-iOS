//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Mighri Radhi on 09/09/2020.
//  Copyright © 2020 Mighri Radhi. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    var result = "0.0"
    var numberOfPeople = 2
    var tipPercentage = 2

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingLabel: UILabel!
    

    override func viewDidLoad() {
        totalLabel.text = result
        settingLabel.text = "Split between \(numberOfPeople), with \(tipPercentage) % tip.  "
        
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        

    
    }
    
    
}
