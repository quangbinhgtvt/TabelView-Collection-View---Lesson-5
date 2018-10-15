//
//  DescriptionViewController.swift
//  TabelView, Collection View - Lesson 5
//
//  Created by BinhPQ on 10/15/18.
//  Copyright © 2018 BinhPQ. All rights reserved.
//

import UIKit

class DescriptionViewController: UIViewController {

    @IBOutlet weak var imageDetail: UIImageView!
    
    var imageName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.hidesBackButton = true
        imageDetail.image = UIImage(named: imageName!)
        print(imageName)

    }
    
    @IBAction func backtoCategoryView(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
