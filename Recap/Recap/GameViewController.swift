//
//  GameViewController.swift
//  Recap
//
//  Created by Okan Aktas on 29.05.2025.
//

import UIKit

class GameViewController: UIViewController {
    
    var counter = 20
    var score = 0
    
    var countDownCounter = Timer()
    var hiddenImage = Timer()
    
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
        
        imageArray = [image0, image1, image2, image3, image4, image5]
        
        for i in imageArray{
            i.isUserInteractionEnabled = true
            let gesture = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
            i.addGestureRecognizer(gesture)
            
            i.isHidden = true
        }
        
        counterLabel.text = "Counter: \(counter)"
        
        countDownCounter = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDownTimer), userInfo: nil, repeats: true)
        hiddenImage = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(hiddenImages), userInfo: nil, repeats: true)
        
        

        
        
        
    }
    
    @objc func countDownTimer(){
        counter -= 1
        counterLabel.text = "Counter: \(counter)"
        if counter == 0 {
            countDownCounter.invalidate()
            hiddenImage.invalidate()
            
            for i in imageArray{
                i.isHidden = false
            }
            
            let alert = UIAlertController(title: "Time's up", message: "Do you wanna again ?", preferredStyle: UIAlertController.Style.alert)
            let ReplayButton = UIAlertAction(title: "Replay!", style: UIAlertAction.Style.cancel) { UIAlertAction in
                self.counter = 10
                self.score = 0
                
                self.counterLabel.text = "Counter: \(self.counter)"
                self.scoreLabel.text = "Score: \(self.score)"
                
                
                self.countDownCounter = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.countDownTimer), userInfo: nil, repeats: true)
                self.hiddenImage = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(self.hiddenImages), userInfo: nil, repeats: true)
            }
            alert.addAction(ReplayButton)
            present.self(alert, animated: true, completion: nil)
        }
    }
    
    @objc func increaseScore(){
        score += 1
        scoreLabel.text = "Score: \(score)"
    }
    
    @objc func hiddenImages(){
        let randomNumber = Int(arc4random_uniform(UInt32(imageArray.count - 1)))
        for i in imageArray{
            i.isHidden = true
            imageArray[randomNumber].isHidden = false
        }
    }

}
