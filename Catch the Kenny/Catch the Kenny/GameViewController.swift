//
//  GameViewController.swift
//  Catch The Kenny
//
//  Created by Okan Aktas on 9.05.2025.
//

import UIKit

class GameViewController: UIViewController {
    
    var counterTime: Int = 30

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

    }

}
