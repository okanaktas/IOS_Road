//
//  DetailsViewController.swift
//  Simpson Book
//
//  Created by Okan Aktas on 30.05.2025.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var selectedSimpson : Simpson?

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.job
        imageView.image = selectedSimpson?.image
        
        
    }

}
