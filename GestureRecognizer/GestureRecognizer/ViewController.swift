//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Okan Aktas on 21.04.2025.
//

import UIKit

class ViewController: UIViewController {
    
    
    var isEnable = true
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        //target viewcontroller'ın kendisi olacak çünkü, vc içerisinde ki bir fonk.'u aksiyon olarak buraya yazacağız
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changePic() {
        
        if isEnable {
            imageView.image = UIImage(systemName: "car")
            valueLabel.text = "Car"
            isEnable = false
        }else{
            imageView.image = UIImage(systemName: "circle")
            valueLabel.text = "Circle"
            isEnable = true
        }
        
    }
    
    
}

