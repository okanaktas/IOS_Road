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
        // Do any additional setup after loading the view.
    }

    @IBAction func saveButton(_ sender: Any) {
        nameLabel.text = "Name: \(nameText.text ?? "")"
        birthdayLabel.text = "Birthday: \(birthdayText.text ?? "")"
    }
    
}

