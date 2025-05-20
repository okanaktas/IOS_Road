//
//  GameViewController.swift
//  Recap
//
//  Created by Okan Aktas on 20.05.2025.
//

import UIKit

class GameViewController: UIViewController {
    
    var counter = 30
    var score = 0
    var imageArray : [UIImageView] = []
    
    var hiddenTimer = Timer()
    var counterTimer = Timer()
    
    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var imageView0: UIImageView!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var imageView4: UIImageView!
    @IBOutlet weak var imageView5: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageArray = [imageView0, imageView1, imageView2, imageView3, imageView4, imageView5]

        for i in imageArray{
            i.isUserInteractionEnabled = true
            let recognizer = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
            i.addGestureRecognizer(recognizer)
            
            i.isHidden = true
        }
        
        hiddenTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(hiddenImages), userInfo: nil, repeats: true)
        counterTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(downCounter), userInfo: nil, repeats: true)
    }
    
    @objc func increaseScore(){
        score = score + 1
        scoreLabel.text = "Score: \(score)"
    }
    
    @objc func hiddenImages(){
        
        for i in imageArray {
            i.isHidden = true
        }
        
        let randomNumber = Int(arc4random_uniform(UInt32(imageArray.count - 1)))
        imageArray[randomNumber].isHidden = false
    }
    
    @objc func downCounter(){
        counterLabel.text = "Counter: \(counter)"
        counter = counter - 1
        
        if counter == 0 {
            hiddenTimer.invalidate()
            counterTimer.invalidate()
        }
    }

}
