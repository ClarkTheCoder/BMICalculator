//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by carson on 2023-11-26.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // only need to specify .lightgrey because xcode knows that background colors needs to be a UIColor
        view.backgroundColor = .lightGray
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
    
    
}
