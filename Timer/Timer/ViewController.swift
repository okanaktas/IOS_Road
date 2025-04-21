//
//  ViewController.swift
//  Timer
//
//  Created by Okan Aktas on 21.04.2025.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var counter = 10

    @IBOutlet weak var timerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timerLabel.text = "Counter: \(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateTimer() {
        timerLabel.text = "Counter: \(counter)"
        counter -= 1
        if counter <= 0 {
            timer.invalidate()
            timerLabel.text = "Time's Up!"
        }
    }


}

