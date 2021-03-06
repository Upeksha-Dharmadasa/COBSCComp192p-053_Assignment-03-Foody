//
//  FoodTableViewCell.swift
//  COBSCComp192p-053_Assignment-03-Foody
//
//  Created by Upeksha Dharmadasa on 3/5/21.
//  Copyright © 2021 Upeksha Dharmadasa. All rights reserved.
//

import UIKit

class FoodTableViewCell: UITableViewCell {

    @IBOutlet weak var ImageCell: UIImageView!
    @IBOutlet weak var NameCell: UILabel!
    @IBOutlet weak var DescriptionCell: UILabel!
    @IBOutlet weak var PriceCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
