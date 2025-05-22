//
//  ViewController.swift
//  Recap
//
//  Created by Okan Aktas on 22.05.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func playGameButton(_ sender: Any) {
        performSegue(withIdentifier: "playGame", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "playGame" {
            let destinationVC = segue.destination as! GameViewController
            destinationVC.counter = Int(counterLabel.text ?? "30") ?? 30
        }
    }
    
}

