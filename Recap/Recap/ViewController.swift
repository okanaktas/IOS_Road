//
//  ViewController.swift
//  Recap
//
//  Created by Okan Aktas on 29.05.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textCounter: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


    @IBAction func buttonPlay(_ sender: Any) {
        performSegue(withIdentifier: "playGame", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "playGame" {
            let destinationVC = segue.destination as! GameViewController
            destinationVC.counter = Int(textCounter.text ?? "10") ?? 10
        }
    }
    
    
    
}

