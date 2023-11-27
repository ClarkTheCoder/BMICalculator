//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Carson Clark
// 
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value)
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = sender.value
        let intWeight = Int(round(weight))
        weightLabel.text = String(intWeight)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        // Extract the whole number
        let feet = floor(height)
        // Convert the remaining part to inches
        let inches = (height - feet) * 12
        let heightInInches = feet * 12 + inches
        
        let BMI = weight / pow(heightInInches, 2) * 703
        
        print(Int(BMI))
//        
//        create second view controller from SecondViewController class and display
//        it when button is clicked
//        let secondVC = SecondViewController()
//        
//        // create property in secondVC class called BMI value
          // and assign it to BMI value within this instance
//        secondVC.bmiValue = String(format: "%.1f", BMI)
//        self.present(secondVC, animated: true, completion: nil)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
}

