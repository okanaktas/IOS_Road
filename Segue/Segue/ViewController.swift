//
//  ViewController.swift
//  Segue
//
//  Created by Okan Aktas on 1.04.2025.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = ""

    @IBOutlet weak var labelFirst: UILabel!
    @IBOutlet weak var textFieldName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonTransfer(_ sender: Any) {
        userName = textFieldName.text ?? ""
        performSegue(withIdentifier: "toSecondViewController", sender: nil)
        
    }
    
    //segue olmadan önce yapılacak işlemleri buraya yazıyorum.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondViewController" {
            //as -- casting
            let destinationViewController = segue.destination as! SecondViewController
            destinationViewController.myName = userName
        }
        
    }
    
    
}

