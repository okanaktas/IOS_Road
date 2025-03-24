//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Okan Aktas on 20.03.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var resultNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func sumClicked(_ sender: Any) {
        
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                
                resultNumber = firstNumber + secondNumber
    
                resultLabel.text = String(resultNumber)
            }
        }
        
    }
    @IBAction func minusClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                
                resultNumber = firstNumber - secondNumber
    
                resultLabel.text = String(resultNumber)
            }
        }
    }
    @IBAction func multiplyClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                
                resultNumber = firstNumber * secondNumber
    
                resultLabel.text = String(resultNumber)
            }
        }
    }
    @IBAction func divideClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                
                resultNumber = firstNumber / secondNumber
    
                resultLabel.text = String(resultNumber)
            }
        }
    }
}

