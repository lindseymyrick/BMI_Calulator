//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    
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
        
        let BMI = weight / pow(height, 2)
        
        print(BMI)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

