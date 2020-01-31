//
//  DetailViewController.swift
//  tinkering-table-view
//
//  Created by Dwi Randy Herdinanto on 31/01/20.
//  Copyright © 2020 Tunaiku. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var thumbnailImage: UIImageView!
    
    
    public static var IDENTIFIER = "DetailViewController"
    
    public var selectedFruit: Fruit!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedFruit.name
        countLabel.text = "Count: \(selectedFruit.stock)"
        thumbnailImage.image = UIImage(named: selectedFruit.thumbnail)
        
    }
    

    

}
