//
//  GameViewController.swift
//  Recap
//
//  Created by Okan Aktas on 22.05.2025.
//

import UIKit

class GameViewController: UIViewController {
    
    var counter = 30
    var score = 0
    
    var imageArray : [UIImageView] = []
    
    var timerForCounter = Timer()
    var timerForShowImage = Timer()

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
        
        imageArray = [image0, image1, image2, image3, image4, image5]
        
        let timerForCounter = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(downCounter), userInfo: nil, repeats: true)
        let timerForShowImage = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(showImage), userInfo: nil, repeats: true)
        
        for i in imageArray{
            i.isUserInteractionEnabled = true
            let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
            i.addGestureRecognizer(tapGestureRecognizer)
            
            i.isHidden = true
        }
        
        
    }
    
    @objc func increaseScore(){
        score = score + 1
        scoreLabel.text = "Score: \(score)"
    }
    
    @objc func downCounter(){
        counter = counter - 1
        counterLabel.text = "Counter: \(counter)"
    }
    
    @objc func showImage(){
        
        for i in imageArray{
            i.isHidden = true
        }
        let randomNumber = Int(arc4random_uniform(UInt32(imageArray.count - 1)))
        imageArray[randomNumber].isHidden = false
        
      
    }

}
