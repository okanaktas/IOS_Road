//
//  ViewController.swift
//  Alert
//
//  Created by Okan Aktas on 17.04.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var valueLabel: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func alertButton(_ sender: Any) {
        
        let alert = UIAlertController(title: "Alert Title", message: "Sen şimdi naneyi yemedin mi ?", preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (UIAlertAction) in
            //buttonClicked
            print("button clicked")
        }
        alert.addAction(okButton)
        
        //self.present -> Ekrana bir şey göster. self burada ViewController'a refeans veriyor.
        self.present(alert, animated: true, completion: nil)
    }
    
}

