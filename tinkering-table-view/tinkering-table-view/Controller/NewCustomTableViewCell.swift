//
//  NewCustomTableViewCell.swift
//  tinkering-table-view
//
//  Created by Dwi Randy Herdinanto on 31/01/20.
//  Copyright © 2020 Tunaiku. All rights reserved.
//

import UIKit

class NewCustomTableViewCell: UITableViewCell {

    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var itemCountLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
