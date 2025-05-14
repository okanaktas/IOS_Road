//
//  ViewController.swift
//  Recap
//
//  Created by Okan Aktas on 14.05.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var denemeLabel: UILabel!
    @IBOutlet weak var deneme2Label: UILabel!
    @IBOutlet weak var deneme3Label: UILabel!
    @IBOutlet weak var deneme4Label: UILabel!
    
    var denemeArray : [UILabel] = []
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        denemeArray = [denemeLabel, deneme2Label, deneme3Label, deneme4Label]
        
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(self.timerHidden), userInfo: nil, repeats: true)
        
        timerHidden()
    }
    
    @objc func timerHidden(){
        for i in denemeArray{
            i.isHidden = true
        }
            let randomnumber = Int(arc4random_uniform(UInt32(denemeArray.count - 1)))
            denemeArray[randomnumber].isHidden = false
        
    }

}

