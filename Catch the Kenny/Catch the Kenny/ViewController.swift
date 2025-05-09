//
//  ViewController.swift
//  Catch The Kenny
//
//  Created by Okan Aktas on 9.05.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lastScoreLabel: UILabel!
    
    @IBOutlet weak var enterCounterText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func startGameButton(_ sender: Any) {
        performSegue(withIdentifier: "startGame", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "startGame" {
            if let destination = segue.destination as? GameViewController {
                destination.counterTime = Int(enterCounterText.text ?? "30") ?? 30
            }
        }
    }
    
}

