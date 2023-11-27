//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Carson Clark on 2023-11-26.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var bmiValue: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        // dismiss current view
        self.dismiss(animated: true)
    }

}
