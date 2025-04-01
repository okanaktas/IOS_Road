//
//  SecondViewController.swift
//  Segue
//
//  Created by Okan Aktas on 1.04.2025.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var labelSecond: UILabel!
    @IBOutlet weak var labelInputName: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelInputName.text = myName
        
    }
    

}
