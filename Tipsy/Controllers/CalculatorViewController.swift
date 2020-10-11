//
//  ViewController.swift
//  Tipsy
//
//  Created by Mighri Radhi on 09/09/2020.
//  Copyright © 2020 Mighri Radhi. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    var numberOfPeople = 2
    var tipPercentage = 0.0
    var totalBill : Double?
    
    @IBOutlet weak var billTextField: UITextField!

    @IBOutlet weak var zeroPctButton: UIButton!
    
    @IBOutlet weak var tenPctButton: UIButton!
    
    @IBOutlet weak var twentyPctButton: UIButton!
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)

        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        
        if zeroPctButton.isSelected == true {
            tipPercentage = 0.0
        } else if
            tenPctButton.isSelected == true {
            tipPercentage = 0.1
        }
        else {
            tipPercentage = 0.2
        }


    }
    

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        billTextField.endEditing(true)
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        
        numberOfPeople = Int(sender.value)
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
         totalBill = Double(billTextField.text!)

        if totalBill != nil {
        totalBill = (totalBill! + tipPercentage * Double(totalBill ?? 0.0) ) / Double(numberOfPeople)
        print(String(format: "%.2f",totalBill!))
        }
        
        
        
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "goToResult" {
                let destinationVC = segue.destination as! ResultsViewController
                destinationVC.result = (String(format: "%.2f",totalBill!))
                destinationVC.numberOfPeople = numberOfPeople
                destinationVC.tipPercentage = Int(tipPercentage*100)
         
         //destinationVC.bmiValue = BMI //when we didn't use the MVC

     }
     
    }



    
}

