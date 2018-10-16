//
//  CategoryViewController.swift
//  TabelView, Collection View - Lesson 5
//
//  Created by BinhPQ on 10/14/18.
//  Copyright © 2018 BinhPQ. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  

    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var ItemCollectionView: UICollectionView!
    
    var list: [String] = ["House", "Community", "Jobs", "Personals", "For Sale", "Forum"]
    var image: [String] = ["Housing", "ICON", "jobs", "money", "personals", "discussion"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ItemCollectionView.delegate = self
        ItemCollectionView.dataSource = self
        
        //set back barbutton title
        let backButton = UIBarButtonItem()
        backButton.title = "Category"
        navigationItem.backBarButtonItem = backButton
   
        // set right bar button
        let rightButton = UIBarButtonItem.init(image: UIImage(named: "Group 4"), style: .done, target: self, action: nil)
        self.navigationItem.rightBarButtonItem = rightButton
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = ItemCollectionView.dequeueReusableCell(withReuseIdentifier: "collectioncell", for: indexPath) as! MyCollectionViewCell
        cell.imageCollectionView.image =  UIImage(named: image[indexPath.row])
        cell.labelCollectionView.text = list[indexPath.row]
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.borderWidth = 0.1
        cell.layer.cornerRadius = 8
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "detailcategory", sender: self)
    }

}
