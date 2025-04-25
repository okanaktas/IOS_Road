//
//  SecondViewController.swift
//  Recap
//
//  Created by Okan Aktas on 25.04.2025.
//

import UIKit

class SecondViewController: UIViewController {
    
    var inputedValue = ""

    @IBOutlet weak var inputedValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputedValueLabel.text = "Inputed Value: \(inputedValue)"

    }
    

}
