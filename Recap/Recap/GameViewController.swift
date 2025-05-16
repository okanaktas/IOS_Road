//
//  GameViewController.swift
//  Recap
//
//  Created by Okan Aktas on 16.05.2025.
//

import UIKit

class GameViewController: UIViewController {
    
    var counter = 30
    var score = 0
    
    var counterTimer = Timer()
    var showImageTimer = Timer()
    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var car0ImageView: UIImageView!
    @IBOutlet weak var car1ImageView: UIImageView!
    @IBOutlet weak var car2ImageView: UIImageView!
    @IBOutlet weak var car3ImageView: UIImageView!
    @IBOutlet weak var car4ImageView: UIImageView!
    @IBOutlet weak var car5ImageView: UIImageView!
    @IBOutlet weak var car6ImageView: UIImageView!
    @IBOutlet weak var car7ImageView: UIImageView!
    @IBOutlet weak var car8ImageView: UIImageView!
    
    var carImageArray : [UIImageView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carImageArray = [car0ImageView,car1ImageView,car2ImageView,car3ImageView,car4ImageView,car5ImageView,car6ImageView,car7ImageView,car8ImageView]
        
        counterLabel.text = "Counter: \(counter)"
        counterTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(counterDown), userInfo: nil, repeats: true)
        showImageTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(showImage), userInfo: nil, repeats: true)
        
        
        for i in carImageArray{
            i.isUserInteractionEnabled = true
            let recognizer = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
            i.addGestureRecognizer(recognizer)
            
            i.isHidden = true
        }
    }
    
    @objc func counterDown(){
        counter -= 1
        counterLabel.text = "Counter: \(counter)"
        
        if counter == 0 {
            counterTimer.invalidate()
            showImageTimer.invalidate()
            
            for i in carImageArray{
                i.isHidden = true
            }
            
            let alert = UIAlertController(title: "Time is Up", message: "Do you wanna play again ?", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
            let replayButton = UIAlertAction(title: "Replay ?", style: UIAlertAction.Style.cancel) { UIAlertAction in
                self.counter = 30
                self.score = 0
                
                self.counterTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.counterDown), userInfo: nil, repeats: true)
                self.showImageTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(self.showImage), userInfo: nil, repeats: true)
            }
            alert.addAction(okButton)
            alert.addAction(replayButton)
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @objc func increaseScore(){
        score += 1
        scoreLabel.text = "Score: \(score)"
    }
    
    @objc func showImage(){
        for i in carImageArray{
            i.isHidden = true
        }
            let randomNumber = Int(arc4random_uniform(UInt32(carImageArray.count - 1)))
            carImageArray[randomNumber].isHidden = false
        
      
    }
    
}
