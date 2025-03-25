//
//  ViewController.swift
//  UserDefaults
//
//  Created by Okan Aktas on 25.03.2025.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var labelName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelName.text = "Name: \(UserDefaults.standard.object(forKey: "name") as? String ?? "")"
    }

    @IBAction func buttonSave(_ sender: Any) {
        
        UserDefaults.standard.set(textFieldName.text ?? "", forKey: "name")
        
        labelName.text = "Name: \(textFieldName.text ?? "")"
        
    }
    @IBAction func buttonDelete(_ sender: Any) {
        
        UserDefaults.standard.removeObject(forKey: "name")
        
        labelName.text = "Name: "
    }
    
}

