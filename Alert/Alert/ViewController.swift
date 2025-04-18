//
//  ViewController.swift
//  Alert
//
//  Created by Okan Aktas on 18.04.2025.
//
import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var valueTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func sendButton(_ sender: Any) {
    
        if valueTextField.text == "" {
            //Gösterilecek ana alert UIAlertController
            let alert = UIAlertController(title: "Alert Title", message: "Sen şimdi naneyi yemedin mi ?", preferredStyle: UIAlertController.Style.alert)
            //Onaylama için oluşturduğum
            let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) { UIAlertAction in
                print("Ok")
            }
            //oluşturduğumuz okButton'u alert içerisine gömmek için
            alert.addAction(okButton)
            
            self.present(alert, animated: true, completion: nil)
        }
        
        performSegue(withIdentifier: "sendToSecondVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendToSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.inputedValue = valueTextField.text ?? ""
        }
    }
    
}



