//
//  ViewController.swift
//  Segue
//
//  Created by Okan Aktas on 12.04.2025.
//

import UIKit

class ViewController: UIViewController {
    
    var informationToGo = ""
    
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func sendInfoButton(_ sender: Any) {
        
        informationToGo = nameTextField.text ?? ""
        
        performSegue(withIdentifier: "sendInfo", sender:  nil)
        
    }
    
    //segue olmadan önce yapılacak işlemleri yazıyorum.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //her zaman segue'nin identifier'ını kontrol ederek başla
        if segue.identifier == "sendInfo" {
            //SecondViewController'ı bir değişken gibi tanımlayacağım.
            //Segue.destination -> Gidilen, hedef yer neresi ise onu veriyor
            //Segio.destination bana bir ViewController veriyor ama hangisi olduğunu bilmiyor bu yüzden casting yapıp as! demem gerek.
            let destinationSecondViewController = segue.destination as! SecondViewController
            //Artık destinationSecondViewController. dediğimde SecondViewController içerisinde ki şeylere ulaşabilirim.
            destinationSecondViewController.inputedText = informationToGo
        }
    }
}

