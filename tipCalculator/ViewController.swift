//
//  ViewController.swift
//  tipCalculator
//
//  Created by Rohan Purandare on 1/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billLabel: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var totalAmountLabel: UILabel!
        
    @IBOutlet weak var partySize: UITextField!
    
    @IBOutlet weak var perPersonTotal: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billLabel.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalAmountLabel.text = String(format: "$%.2f", total)
    }
    
    
    @IBAction func calculateParty(_ sender: Any) {
        let bill = Double(billLabel.text!) ?? 0
        let partySize = Double(partySize.text!) ?? 1
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let totalPerPerson = total / partySize
        perPersonTotal.text = String(format: "$%.2f", totalPerPerson)
    
    }
}

