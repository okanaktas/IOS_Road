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
        counterLabel.text = "Counter: \(counter)"
        counter = counter - 1
        
        if counter == 0{
            timerForCounter.invalidate()
            timerForShowImage.invalidate()
            
            let alert = UIAlertController(title: "Time's Up", message: "Do you wanna play again ?", preferredStyle: UIAlertController.Style.alert)
            let noBUtton = UIAlertAction(title: "No", style: UIAlertAction.Style.cancel, handler: nil)
            let replayButton = UIAlertAction(title: "Replay ?", style: UIAlertAction.Style.default) { UIAlertAction in
                self.score = 0
                self.counter = 30
                self.timerForCounter = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.downCounter), userInfo: nil, repeats: true)
                self.timerForShowImage = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(self.showImage), userInfo: nil, repeats: true)
                
            }
            alert.addAction(noBUtton)
            alert.addAction(replayButton)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @objc func showImage(){
        
        for i in imageArray{
            i.isHidden = true
        }
        let randomNumber = Int(arc4random_uniform(UInt32(imageArray.count - 1)))
        imageArray[randomNumber].isHidden = false
        
      
    }

}
