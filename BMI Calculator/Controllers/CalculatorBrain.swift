//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Carson Clark on 2023-11-27.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmiValue: String?
    var adviceValue: String?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        // Extract the whole number
        let feet = floor(height)
        // Convert the remaining part to inches
        let inches = (height - feet) * 12
        let heightInInches = feet * 12 + inches
        
        let bmi = weight / pow(heightInInches, 2) * 703
        bmiValue = String(format: "%.1f", bmi)
        
        if bmi < 18.5 {
            adviceValue = "You need to eat more!"
        } else if bmi < 24.5 {
            adviceValue = "You're va healthy weight"
        } else {
            adviceValue = "You are overweight."
        }
    }

     func getBMIValue() -> String {
         // return bmiValue and if it's nil return default value of 0.0 
         return bmiValue ?? "0.0"
    }
    
    func getAdviceValue() -> String {
        return adviceValue ?? "No weight or heigh provided"
    }
}
