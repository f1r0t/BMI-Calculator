//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Fırat AKBULUT on 10.08.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightSliderLabel: UILabel!
    @IBOutlet weak var weightSliderLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightBar(_ sender: UISlider) {
        heightSliderLabel.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    @IBAction func weightBar(_ sender: UISlider) {
        weightSliderLabel.text = "\(String(format: "%.0f", sender .value))kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let weight = weightSlider.value
        let height = heightSlider.value
        calculatorBrain.calculateBMI(weight: weight, height: height)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

