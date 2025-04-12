//
//  SecondViewController.swift
//  Recap
//
//  Created by Okan Aktas on 12.04.2025.
//

import UIKit

class SecondViewController: UIViewController {
    
    var inputedInfo = ""

    @IBOutlet weak var inputedInfoLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputedInfoLabel.text = inputedInfo

    }

}
