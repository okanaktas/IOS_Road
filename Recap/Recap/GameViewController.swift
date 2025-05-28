//
//  GameViewController.swift
//  Recap
//
//  Created by Okan Aktas on 29.05.2025.
//

import UIKit

class GameViewController: UIViewController {
    
    var counter = 20
    
    var countDownCounter = Timer()
    
    var imageArray : [UIImageView] = []

    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var image0: UIImageView!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in imageArray{
            i.add
        }
        
        counterLabel.text = "Counter: \(counter)"
        
        countDownCounter = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDownTimer), userInfo: nil, repeats: true)
        
        

        
        
        
    }
    
    @objc func countDownTimer(){
        counter -= 1
        counterLabel.text = "Counter: \(counter)"
        if counter == 0 {
            countDownCounter.invalidate()
        }
    }

}
