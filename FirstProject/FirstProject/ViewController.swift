//
//  ViewController.swift
//  FirstProject
//
//  Created by Okan Aktas on 10.03.2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func buttonClicked(_ sender: Any) {
        
        imageView.image = UIImage(named: "image2")
        
    }
    
}

