//
//  ViewController.swift
//  UserDefaults
//
//  Created by Okan Aktas on 1.04.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldBirthday: UITextField!
    
    @IBOutlet weak var labelInputed: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelInputed.text = UserDefaults.standard.string(forKey: "inputData") ?? "Name and Birthday:"
        
    }

    @IBAction func buttonSave(_ sender: Any) {
        let inputValue = "Name and Birthday: \(textFieldName.text ?? "") \(textFieldBirthday.text ?? "")"
        labelInputed.text = inputValue
        
        UserDefaults.standard.set(inputValue, forKey: "inputData")
    }
    
    @IBAction func buttonDeleted(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "inputData")
        labelInputed.text = "Name and Birthday: "
    }
    
}

