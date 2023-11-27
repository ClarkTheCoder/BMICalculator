//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Carson Clark
// 
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()

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
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    // This method is called just before a segue is performed, giving you an opportunity to configure
    // the destination view controller.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            // as! is used for forced downcasting (taking UIViewController and downcasting it to ResultsViewController
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.adviceValue = calculatorBrain.getAdviceValue()
        }
    }
    
}

