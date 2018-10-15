//
//  DetailCategoryTableViewCell.swift
//  TabelView, Collection View - Lesson 5
//
//  Created by BinhPQ on 10/15/18.
//  Copyright © 2018 BinhPQ. All rights reserved.
//

import UIKit

class DetailCategoryTableViewCell: UITableViewCell {

    //outlets
    
    @IBOutlet weak var imageDetailCategoryCell: UIImageView!    
    @IBOutlet weak var labelDetailCategoryCell: UILabel!
    @IBOutlet weak var starButton: UIButton!
    @IBOutlet weak var heartButoon: UIButton!
    @IBOutlet weak var forwardButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
