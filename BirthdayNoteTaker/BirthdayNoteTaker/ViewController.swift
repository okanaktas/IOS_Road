//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Okan Aktas on 25.03.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var birthdayText: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        //Casting - as? String demek, değeri String'e çevirebiliyorsan çevir öyle devam et demek.
        //force casting - as! String demek, ne olursa olsun String olarak kaydedeceksin bunu demek.
        if let newName = storedName as? String{
            nameLabel.text = newName
        }
        if let newBirthday = storedBirthday as? String{
            birthdayLabel.text = newBirthday
        }
        
    }

    @IBAction func saveButton(_ sender: Any) {
        nameLabel.text = "Name: \(nameText.text ?? "")"
        birthdayLabel.text = "Birthday: \(birthdayText.text ?? "")"
        
        UserDefaults.standard.set(nameText.text,forKey: "name")
        UserDefaults.standard.set(birthdayText.text,forKey: "birthday")
    }
    
}

