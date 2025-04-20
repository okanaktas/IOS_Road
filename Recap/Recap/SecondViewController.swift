//
//  SecondViewController.swift
//  Recap
//
//  Created by Okan Aktas on 21.04.2025.
//

import UIKit

class SecondViewController: UIViewController {
    
    var inputedValue = ""
    
    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        valueLabel.text = inputedValue
        
    }
    

}
