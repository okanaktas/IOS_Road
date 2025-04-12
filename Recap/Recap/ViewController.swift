//
//  ViewController.swift
//  Recap
//
//  Created by Okan Aktas on 12.04.2025.
//

import UIKit

class ViewController: UIViewController {
    
    var sendInfo = ""
    
    @IBOutlet weak var infoTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func goToInformationButton(_ sender: Any) {
        //sendInfo = infoTextField.text ?? ""
        performSegue(withIdentifier: "goToSecondPage", sender: nil)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondPage" {
            let destinationViewController = segue.destination as! SecondViewController
            destinationViewController.inputedInfo = infoTextField.text ?? ""
        }
    }
    
}

