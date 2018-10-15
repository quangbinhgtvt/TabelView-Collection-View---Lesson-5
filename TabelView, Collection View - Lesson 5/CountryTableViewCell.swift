//
//  CountryTableViewCell.swift
//  TabelView, Collection View - Lesson 5
//
//  Created by BinhPQ on 10/13/18.
//  Copyright © 2018 BinhPQ. All rights reserved.
//

import UIKit

class CountryTableViewCell: UITableViewCell {

    
    @IBOutlet weak var CountryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
