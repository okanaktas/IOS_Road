//
//  ViewController.swift
//  Recap
//
//  Created by Okan Aktas on 11.04.2025.
//

import UIKit

class ViewController: UIViewController {
    
    
    var gidecekOlanBilgi = ""
    
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func sendButton(_ sender: Any) {
        gidecekOlanBilgi = nameTextField.text ?? ""
        performSegue(withIdentifier: "goToSecondPage", sender: nil)
    }
    
    //segue olmadan önce yapılacak işlemleri yazıyorum.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //her zaman segue'nin identifier'ını kontrol ederek başla
        if segue.identifier == "goToSecondPage" {
            //SecondViewController'ı bir değişken gibi tanımlayacağım.
            //Segue.destination -> Gidilen, hedef yer neresi ise onu veriyor
            //Segio.destination bana bir ViewController veriyor ama hangisi olduğunu bilmiyor bu yüzden casting yapıp as! demem gerek.
            let destinationSecondViewController = segue.destination as! SecondViewController
            //Artık destinationSecondViewController. dediğimde SecondViewController içerisinde ki şeylere ulaşabilirim.
            destinationSecondViewController.gelenBilgi = gidecekOlanBilgi
        }
    }
    
}

