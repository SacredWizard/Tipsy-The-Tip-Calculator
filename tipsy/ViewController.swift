//
//  ViewController.swift
//  tipsy
//
//  Created by Rakesh R on 7/21/20.
//  Copyright © 2020 Rakesh R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipSlider: UISlider!
    
    @IBOutlet weak var tipPercentLabel: UILabel!
    
    @IBOutlet weak var peopleSlider: UISlider!
    
    @IBOutlet weak var shareLabel: UILabel!
    
    @IBOutlet weak var numPeopleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let numberOfPeople = Float(lroundf(peopleSlider.value))
        peopleSlider.setValue(numberOfPeople, animated: true)
        let bill = Float(billField.text!) ?? 0
        let tip = bill * tipSlider.value * 0.01
        let total = bill + tip
        tipPercentLabel.text = String.init(format: "%.2f", tipSlider.value) + "%"
        tipLabel.text = String(format: "$ %.2f", tip)
        totalLabel.text = String(format: "$ %.2f", total)
        numPeopleLabel.text = String(Int(numberOfPeople))
        shareLabel.text = String(format: "$ %.2f", total/numberOfPeople)
    }
    
    
}

