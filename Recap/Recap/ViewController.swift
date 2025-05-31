//
//  ViewController.swift
//  Recap
//
//  Created by Okan Aktas on 31.05.2025.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    

    var personArray : [Person] = []
    
    var choosenPerson : Person?
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let okan = Person(name: "Okan", job: "Engineer", image: UIImage(systemName: "car")!)
        let berkay = Person(name: "Berkay", job: "Student", image: UIImage(systemName: "person.circle")!)
        let filiz = Person(name: "Filiz", job: "Lawyer", image: UIImage(systemName: "person")!)
        
        personArray = [okan, berkay, filiz]
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration( )
        content.text = personArray[indexPath.row].name
        content.secondaryText = personArray[indexPath.row].job
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choosenPerson = personArray[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedPerson = choosenPerson
        }
    }
    

}

