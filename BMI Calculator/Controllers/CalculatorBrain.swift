//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Fırat AKBULUT on 10.08.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(weight: Float, height: Float){
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pices!", color: .blue)
        } else if  bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fir as a fiddle!", color: .green)
        } else{
            bmi = BMI(value: bmiValue, advice: "Eat less pices!", color: .red)
        }
    }
    
    func getBMIValue()-> String{
        if let safeBMI = bmi?.value {
            return String(format: "%.1f", safeBMI)
        } else{
            return "0.0"
        }
    }
    
    func getAdvice()-> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor()-> UIColor{
        return bmi?.color ?? UIColor.white
    }
    
}
