//
//  ViewController.swift
//  Recap
//
//  Created by Okan Aktas on 8.04.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var birthdayText: UITextField!
    @IBOutlet weak var stored: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let inputedName = UserDefaults.standard.object(forKey: "name") as? String ?? ""
        let inputedBirthday = UserDefaults.standard.object(forKey: "birthday") as? String ?? ""
        stored.text = "Name: \(inputedName) Birthday: \(inputedBirthday)"
        
    }

    @IBAction func buttonSave(_ sender: Any) {
        stored.text = "Name: \(nameText.text ?? "Name and Birthday: ") Birthday: \(birthdayText.text ?? "Name and Birthday: ")"
        UserDefaults.standard.set(nameText.text, forKey: "name")
        UserDefaults.standard.set(birthdayText.text, forKey: "birthday")
        
    }
    @IBAction func deleteButton(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "name")
        UserDefaults.standard.removeObject(forKey: "birthday")
        stored.text = "Name and Birthday:"
        
    }

    @IBAction func transferDatasButton(_ sender: Any) {
        performSegue(withIdentifier: "goToSecondPage", sender: nil)
    }
    
    
}

