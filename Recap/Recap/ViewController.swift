//
//  ViewController.swift
//  Recap
//
//  Created by Okan Aktas on 20.05.2025.
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
            let destinationViewController = segue.destination as! GameViewController
            destinationViewController.counter = Int(counterLabel.text ?? "10") ?? 10
        }
    }

}

