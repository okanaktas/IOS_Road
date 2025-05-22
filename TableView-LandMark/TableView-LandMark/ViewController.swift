//
//  ViewController.swift
//  TableView-LandMark
//
//  Created by Okan Aktas on 23.05.2025.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    //Kaç tane girdi olacağını soruyor bize, kaç tane göstereceksek onu yazıyoruz.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    //Burada ne göstereceğini soruyor. cell dediği hücre demek. TableView içerisinde ki görünümlerin her birine hücre diyoruz.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //TableView içerisinde cell adında bir hücre oluşturdum ama bu hücre içerisinde ne gösterilecek henüz söylemedim.
        let cell = UITableViewCell()
        /*eski kullanılmayan
        cell.textLabel?.text = "test"
         */
        //içerik diye bir değişken oluşturuyorum ve içerik ayarlayıcısını içerisine atıyorum.
        var content = cell.defaultContentConfiguration( )
        content.text = "test"
        content.secondaryText = "test2"
        content.image = UIImage(systemName: "star")
        //yapılan değişiklikleri eşitledim.
        cell.contentConfiguration = content
        return cell
    }
    
    
}

