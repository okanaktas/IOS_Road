//
//  GameViewController.swift
//  Catch The Kenny
//
//  Created by Okan Aktas on 9.05.2025.
//

import UIKit

class GameViewController: UIViewController {
    
    //Variables
    var timer = Timer()
    var counterTime = 25
    var score = 0
    var kennyImageArray : [UIImageView] = []
    var hideTimer = Timer()
    
    //Views
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var kenny0image: UIImageView!
    @IBOutlet weak var kenny1image: UIImageView!
    @IBOutlet weak var kenny2image: UIImageView!
    @IBOutlet weak var kenny3image: UIImageView!
    @IBOutlet weak var kenny4image: UIImageView!
    @IBOutlet weak var kenny5image: UIImageView!
    @IBOutlet weak var kenny6image: UIImageView!
    @IBOutlet weak var kenny7image: UIImageView!
    @IBOutlet weak var kenny8image: UIImageView!
    @IBOutlet weak var kenny9image: UIImageView!
    @IBOutlet weak var kenny10image: UIImageView!
    @IBOutlet weak var kenny11image: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counterLabel.text = "Counter: \(counterTime)"
        
        //Kullanıcıların kenny'nin üzerine tıklamasını etkin hale getiriyor.
        kenny0image.isUserInteractionEnabled = true
        kenny1image.isUserInteractionEnabled = true
        kenny2image.isUserInteractionEnabled = true
        kenny3image.isUserInteractionEnabled = true
        kenny4image.isUserInteractionEnabled = true
        kenny5image.isUserInteractionEnabled = true
        kenny6image.isUserInteractionEnabled = true
        kenny7image.isUserInteractionEnabled = true
        kenny8image.isUserInteractionEnabled = true
        kenny9image.isUserInteractionEnabled = true
        kenny10image.isUserInteractionEnabled = true
        kenny11image.isUserInteractionEnabled = true
        
        let recognizer0 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer10 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        let recognizer11 = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
        
        kenny0image.addGestureRecognizer(recognizer0)
        kenny1image.addGestureRecognizer(recognizer1)
        kenny2image.addGestureRecognizer(recognizer2)
        kenny3image.addGestureRecognizer(recognizer3)
        kenny4image.addGestureRecognizer(recognizer4)
        kenny5image.addGestureRecognizer(recognizer5)
        kenny6image.addGestureRecognizer(recognizer6)
        kenny7image.addGestureRecognizer(recognizer7)
        kenny8image.addGestureRecognizer(recognizer8)
        kenny9image.addGestureRecognizer(recognizer9)
        kenny10image.addGestureRecognizer(recognizer10)
        kenny11image.addGestureRecognizer(recognizer11)
        
        kennyImageArray = [kenny0image, kenny1image, kenny2image, kenny3image, kenny4image, kenny5image, kenny6image,kenny7image,kenny8image,kenny9image,kenny10image,kenny11image]
        
        
        
        //Tüm yukarıdakiler yerine bir dizi ve döngü ile aşağıdaki gibi yapılabilir
        
        /*Aşağıdaki kodu da viewDidLoad üstünde tanımlıyoruz
         var kennyImageViews: [UIImageView] = []
         */
        
        /* Tüm image view'leri diziye ekle
         kennyImageViews = [
         kenny0image, kenny1image, kenny2image, kenny3image,
         kenny4image, kenny5image, kenny6image, kenny7image,
         kenny8image, kenny9image, kenny10image, kenny11image
         ]
         
         // Hepsine tek tek gesture recognizer ekle
         for imageView in kennyImageViews {
         imageView.isUserInteractionEnabled = true
         let recognizer = UITapGestureRecognizer(target: self, action: #selector(increaseScore))
         imageView.addGestureRecognizer(recognizer)
         }
         */
        
        //Timers
        counterLabel.text = "Counter: \(counterTime)"
        //Saniye de 1 yap, nereden çağrılacak bu fonk.
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
        hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(hideKenny), userInfo: nil, repeats: true)
        hideKenny()
        
    }
    
    @objc func hideKenny(){
        for i in kennyImageArray{
            i.isHidden = true
        }
        let randomNumber = Int(arc4random_uniform(UInt32(kennyImageArray.count - 1)))
        kennyImageArray[randomNumber].isHidden = false
    }
    
    @objc func increaseScore(){
        score += 1
        scoreLabel.text = "Score: \(score)"
    }
    
    @objc func countDown(){
        counterTime -= 1
        
        counterLabel.text = "Counter: \(counterTime)"
        
        if counterTime == 0 {
            timer.invalidate()
            hideTimer.invalidate()
            
            //Alert
            let alert = UIAlertController(title: "Time is Up", message: "Do you wanna play again ?", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
            let replayButton = UIAlertAction(title: "Replay", style: UIAlertAction.Style.default) { UIAlertAction in
                //replay function
            }
            alert.addAction(okButton)
            alert.addAction(replayButton)
            //completion -> bu bitince de bir şey yapayım mı ? Nil diyorum çünkü zaten replay butonu içerisinde yapıyorum
            self.present(alert, animated: true, completion: nil)
        }
    }
    
}
