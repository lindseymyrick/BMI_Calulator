//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Lindsey Myrick on 10/15/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?

   mutating func calculateBMI (height: Float, weight: Float) {
//        BMI = weight / pow(height, 2)
          let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Add more protein to your diet", color: UIColor.blue )
        } else if bmiValue > 18.5 && bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "No need to change your diet", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Add more vegetables to your diet", color: UIColor.purple)
        }
    }
    
    func getBMIValue () -> Float {
        let bmiValue: Float = self.bmi?.value ?? 0.0
        return bmiValue
    }
    
    func getAdvice () -> String {
           let adviceValue: String = self.bmi?.advice ?? "No advice"
           return adviceValue
       }
    
    func getColor () -> UIColor {
        let colorValue: UIColor = self.bmi?.color ?? UIColor.white
        return colorValue
    }
}

 
