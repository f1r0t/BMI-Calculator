//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Fırat AKBULUT on 10.08.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue: String?
    var color: UIColor?
    var advice: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
         
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true )
    }
}
