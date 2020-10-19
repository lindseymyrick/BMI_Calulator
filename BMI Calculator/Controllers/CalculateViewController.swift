//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
//    var BMI: Float?
    
    var calculatorBrain = CalculatorBrain()
 
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
       let formattedHeight = String(format: "%.2f", sender.value) + "m"
        print(formattedHeight)
        heightLabel.text = formattedHeight;
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let formattedWeight = String(format: "%.0f", sender.value) + "Kg"
        print(sender.value)
        weightLabel.text = formattedWeight;
        
    }
    
     
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
//        BMI = weight / pow(height, 2)
        
        

        self.performSegue(withIdentifier: "goToResult", sender: self)
        
//Programattic way of linking view controllers
//         let secondVC = SecondViewController()
//        secondVC.bmiValue = String(format: "%.1f", BMI)
//
//        self.present(secondVC, animated: true, completion: nil)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue , sender: Any? ) {
        if segue.identifier == "goToResult" {
            print("YES")
            let destinationVC = segue.destination as! ResultsViewController
//            destinationVC.bmiValue = String(format: "%.2f", BMI!)
            destinationVC.bmiValue = String(format: "%.2f", calculatorBrain.getBMIValue())
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        } else {
            print("NO")
        }
    }
}

