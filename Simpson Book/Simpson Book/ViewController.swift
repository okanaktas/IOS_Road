//
//  ViewController.swift
//  Simpson Book
//
//  Created by Okan Aktas on 30.05.2025.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    

    @IBOutlet weak var tableView: UITableView!
    
    var simpsonArray : [Simpson] = []
    
    var choosenSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //Simpson Objects
        let okan = Simpson(name: "Okan", job: "Engineer", image: UIImage(systemName: "car")!)
        let berkay = Simpson(name: "Berkay", job: "Student", image: UIImage(systemName: "car.fill")!)
        let filiz = Simpson(name: "Filiz", job: "Lawyer", image: UIImage(systemName: "car")!)
        
        simpsonArray = [okan,berkay,filiz]
    }
    
    //kaç tane row olacağını yazdığımız yer
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsonArray.count
    }
    
    
    //nasıl bir row olacak nasıl bir sıra olacak.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //burada tableView içerisinde kullanmak için hücre oluşturuyoruz
        let cell = UITableViewCell()
        cell.textLabel?.text = simpsonArray[indexPath.row].name
        return cell
    }
    
    //Bir şey seçildiğinde
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //seçilen simpsonı choosenSimpson'a atıyorum fakat buraya yazarsan aşağıda prepare içerisinden ulaşamam bu yüzden en yukarıda var choosenSimpson : Simpson? olarak ilk başta tanımladım
        choosenSimpson = simpsonArray[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: self)
    }
    
    //perform'a hazırlan
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedSimpson = choosenSimpson
        }
    }


}

