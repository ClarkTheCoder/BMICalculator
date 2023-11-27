//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Carson Clark on 2023-11-26.
//
//

import UIKit

class ResultsViewController: UIViewController {

    var bmiValue: String?
    var adviceValue: String?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
        adviceLabel.text = adviceValue
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        // dismiss current view
        self.dismiss(animated: true)
    }

}
