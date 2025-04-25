//
//  ViewController.swift
//  Recap
//
//  Created by Okan Aktas on 25.04.2025.
//

import UIKit

class ViewController: UIViewController {
    
    var allValues = ""
    
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var passwordAgainText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        
        if nameText.text == "" {
            makeAlert(titleInput: "Error!", messageInput: "Name not found")
        }else if passwordText.text == "" {
            makeAlert(titleInput: "Error!", messageInput: "Password not found!")
        }else if passwordAgainText.text == "" {
            makeAlert(titleInput: "Error!", messageInput: "Password Again not found")
        }else if passwordText.text == passwordAgainText.text {
            makeAlert(titleInput: "Error", messageInput: "Password not match")
        }else{
            allValues = "\(nameText.text ?? ""), \(passwordText.text ?? ""), \(passwordAgainText.text ?? "")"
            performSegue(withIdentifier: "goToSecondVC", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.inputedValue = allValues
        }
    }
    
    func makeAlert (titleInput : String, messageInput : String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK!", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
}

