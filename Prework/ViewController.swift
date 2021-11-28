//
//  ViewController.swift
//  Prework
//
//  Created by Cheah Wen Hui on 27/11/2021.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any)
    {
        //Get the initial bill amount.
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Calculate the tips.
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        //Calculate the total cost.
        let total = bill + tip
        
        //Update the tip.
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        //Update the total labels.
        totalLabel.text = String(format: "$%.2f", total)
    }
}

