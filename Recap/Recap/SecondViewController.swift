//
//  SecondViewController.swift
//  Recap
//
//  Created by Okan Aktas on 18.04.2025.
//

import UIKit

class SecondViewController: UIViewController {
    
    var inputedValue = ""
    
    @IBOutlet weak var inputedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        inputedLabel.text = inputedValue
        
    }

}
