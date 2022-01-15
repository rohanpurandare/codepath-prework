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
    
    @IBOutlet weak var tipPercent: UISlider!
    
    @IBOutlet weak var percentValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calcTip(_ sender: Any) {
        let bill = Double(billLabel.text!) ?? 0
        let tipPercentage = Double(tipPercent.value)
        percentValue.text = String(format: "%.0f%%", tipPercentage * 100)
        let tip = bill * tipPercentage
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalAmountLabel.text = String(format: "$%.2f", tip + bill)
    }
    
    @IBAction func calculateParty(_ sender: Any) {
        let bill = Double(billLabel.text!) ?? 0
        let tipPercentage = Double(tipPercent.value)
        percentValue.text = String(format: "%.0f%%", tipPercentage * 100)
        let tip = bill * tipPercentage
        let partySize = Double(partySize.text!) ?? 1
        let totalPerPerson = (tip + bill) / partySize
        perPersonTotal.text = String(format: "$%.2f", totalPerPerson)
    
    }
}

