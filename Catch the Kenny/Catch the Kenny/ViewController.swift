//
//  ViewController.swift
//  Catch The Kenny
//
//  Created by Okan Aktas on 9.05.2025.
//

import UIKit

class ViewController: UIViewController {
    
    var highScore = 0
    
    
    @IBOutlet weak var highScoreLabel: UILabel!
    
    @IBOutlet weak var enterCounterText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        highScore = UserDefaults.standard.integer(forKey: "highScore")
        highScoreLabel.text = "High Score: \(highScore)"
        
        
    }
    
    @IBAction func startGameButton(_ sender: Any) {
        performSegue(withIdentifier: "startGame", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "startGame"{
            let destinationVC = segue.destination as! GameViewController
            destinationVC.counterTime = Int(enterCounterText.text ?? "30") ?? 30
        }
    }
    
}

