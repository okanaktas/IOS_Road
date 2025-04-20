//
//  ViewController.swift
//  Recap
//
//  Created by Okan Aktas on 21.04.2025.
//

import UIKit

class ViewController: UIViewController {
    
    var value = ""

    @IBOutlet weak var valueTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func sendButton(_ sender: Any) {
        
        if value.isEmpty {
            let alert = UIAlertController(title: "Boş geçilemez", message: "Please entry value", preferredStyle: UIAlertController.Style.alert)
            self.present(alert, animated: true, completion: nil)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
        }else{
            value = valueTextField.text ?? ""
            performSegue(withIdentifier: "goToSecondPage", sender: nil)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondPage" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.inputedValue = value
        }
    }
    
}

