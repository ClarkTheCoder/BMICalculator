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
    
    mutating func calculateBMI(height: Float, weight: Float) {
        // Extract the whole number
        let feet = floor(height)
        // Convert the remaining part to inches
        let inches = (height - feet) * 12
        let heightInInches = feet * 12 + inches
        
        let bmi = weight / pow(heightInInches, 2) * 703
        bmiValue = String(format: "%.1f", bmi)
    }

     func getBMIValue() -> String {
       return bmiValue!
    }
}
