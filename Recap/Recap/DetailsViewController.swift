//
//  DetailsViewController.swift
//  Recap
//
//  Created by Okan Aktas on 31.05.2025.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var selectedPerson : Person?

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedPerson?.name
        jobLabel.text = selectedPerson?.job
        imageView.image = selectedPerson?.image
        
        
        
    }

}
