//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Alex Shumylo on 30.10.2021.
//  Copyright © 2021 ShumApps. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    

    
    func getBMIvalue() -> String {
        let bmiValue = String(format: "%.1f", bmi?.value ?? 0.0) // nil coalescing operator
        return bmiValue
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Try to recalculate"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1) )
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Great shape!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
        

    }
    
    
    
}
// func getAdvice()
// func getColor()
