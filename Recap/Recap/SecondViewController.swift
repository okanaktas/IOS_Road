//
//  SecondViewController.swift
//  Recap
//
//  Created by Okan Aktas on 11.04.2025.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var inputedLabel: UILabel!
    
    var gelenBilgi = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputedLabel.text = gelenBilgi
    }

}
