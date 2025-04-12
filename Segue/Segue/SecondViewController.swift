//
//  SecondViewController.swift
//  Segue
//
//  Created by Okan Aktas on 12.04.2025.
//

import UIKit

class SecondViewController: UIViewController {
    
    var inputedText = ""
    
    @IBOutlet weak var inputedInfo: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputedInfo.text = inputedText
    
        
    }
    

}
