//
//  ViewController.swift
//  Alert
//
//  Created by Okan Aktas on 21.04.2025.
//

import UIKit

class ViewController: UIViewController {
    
    var sendTotalValue = ""
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordAgainTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        
        if userNameTextField.text == ""{
            makeAlert(titleInput: "Error", messageInput: "Username not found!")
        }else if passwordTextField.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Password not found!")
        }else if passwordTextField.text != passwordAgainTextField.text{
            makeAlert(titleInput: "Error", messageInput: "Passwords do not match!")
        }else{
            sendTotalValue = "\(userNameTextField.text ?? "") \(passwordTextField.text ?? "") \(passwordAgainTextField.text ?? "")"
            performSegue(withIdentifier: "goToSecondVC", sender: nil)
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.inputedValue = sendTotalValue
        }
    }
    
    func makeAlert(titleInput : String ,messageInput : String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true,completion: nil)
    }
    
}

