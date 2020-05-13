//
//  RestaurantTableViewCell.swift
//  UITableViewControllerPractice
//
//  Created by 旌榮 凌 on 2020/5/13.
//  Copyright © 2020 旌榮 凌. All rights reserved.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet var locationLabel: UILabel!
    
    @IBOutlet var typeLabel: UILabel!
    
    @IBOutlet var thumbnailImageView: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
